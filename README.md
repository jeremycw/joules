# Joules

![Joules](https://user-images.githubusercontent.com/556462/80031798-366a3380-84b8-11ea-914b-8986d9802a8b.png)

⚡⚡⚡⚡⚡⚡⚡⚡⚡⚡⚡

## Description

Joules is a minimal non-blocking web framework for mruby based on the [httpserver.h](https://github.com/jeremycw/httpserver.h) non-blocking HTTP server.

## Goals

There are two major goals of this project, simplicity and performance.

### Simplicity

- Use mruby a simpler ruby runtime
- Compiles to single static binary for simple deployment
- Prefers simplicity over features
- Uses simple dependencies that also prefer simplicity over features

### Performance

- Strictly non-blocking IO
- Heavy lifting done in C extensions

## Example

```ruby
class HomeController < WebFramework::Controller
  default_content_type 'text/html'

  def show
    render body: "<h1>Hello, World!</h1>"
  end
end

server = WebFramework::Server.new(8080, [
  [ '/', 'GET', HomeController, :show ]
])
server.listen
```

## Benchmarks

Run on a 2015 era Macbook with a 2.5ghz Intel Core i7

### Joules

Running Apache Bench on the above example:

`ab -k -c 200 -n 100000 http://localhost:8080/`

`Requests per second:    62098.88 [#/sec] (mean)`

### NGINX

With config:

```
worker_processes 1;

http {
    server {
        listen 8080;
        location / {
             add_header Content-Type text/html;
             return 200 '<h1>Hello, World!</h1>';
        }
    }
}
```

`ab -k -c 200 -n 100000 http://localhost:8080/`

`Requests per second:    74441.26 [#/sec] (mean)`

### Sinatra

With puma config (4 worker processes 20 threads each):

```ruby
#!/usr/bin/env puma
threads 20, 20
port 8080
workers 4
```

And server:

```ruby
require 'sinatra'

class Application < Sinatra::Base
  get '/' do
    '<h1>Hello world!</h1>'
  end
end
```

`Requests per second:    12892.84 [#/sec] (mean)`

## Usage

### Prerequisite Dependencies

To run a Joules project you need to be able to compile mruby. To do this you will need to have the following installed:

- C compiler
- bison
- ruby

### MacOS

`brew install bison`

`brew install ruby`

### Ubuntu

`apt-get install bison`

`apt-get install ruby`

### To Create a New Project

1. Clone this repo `git clone git@github.com:jeremycw/joules.git <your-project-name>`
2. Run `make init` in the top level directory. This only needs to be run once when setting up a project
3. Run `make run` to compile the project and run it.
4. Navigate to `http://localhost:8080/` to test

