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

1. Clone this repo `git clone git@github.com:jeremycw/joules.git <your-project-name>
2. Run `make init` in the top level directory. This only needs to be run once when setting up a project
3. Run `make run` to compile the project and run it.
4. Navigate to `http://localhost:8080/` to test

