require 'socket'

server = TCPServer.new 3002                     # Prepares the server to be bound to port 3002
puts "Loading the server!"

loop do
  client = server.accept                        # Infinite loop that waits for a client to accept
  request = client.gets
  puts request                                  # for logging purposes

  path = request.split(" ")[1]
  path = File.join("public", path)
  File.open(path, "r") do |file|
    client.puts "HTTP/1.1 200 OK"               # these lines set the header
    client.puts "Content-Type: text/html"
    client.puts "Content-Length: #{file.size}"
    client.puts "Connection: close"
    client.puts file.read                       # getting the content of the html page and rendering it for the user
  end
  client.close
end

# curl http://locatlhost:3002/index.html
