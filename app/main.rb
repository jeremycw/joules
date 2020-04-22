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
