# Joules

![Joules](https://user-images.githubusercontent.com/556462/80031798-366a3380-84b8-11ea-914b-8986d9802a8b.png)

⚡⚡⚡⚡⚡⚡

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
