class UsersController < WebFramework::Controller
  default_content_type 'text/html'

  def create
  end

  def show
    render body: "<h1>Hello, World!</h1>"
  end

  def update
  end

  def destroy
  end
end

server = WebFramework::Server.new(8080, [
  [ '/users', 'GET', UsersController, :show ]
])
server.listen
