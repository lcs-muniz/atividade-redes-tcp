require 'socket'

def start_server(address, port)
  server_socket = TCPServer.new(address, port)
  
  puts "Server rodando.. #{address} #{port}"

  loop do
    client_socket = server_socket.accept
    
    data = client_socket.recv(1024)
    
    puts "#{client_socket.peeraddr[3]} - Mensagem: #{data}"
    
    client_socket.close
  end
end

begin
  HOST = 'localhost'
  PORT = 6000

  start_server(HOST, PORT)
rescue => e
  puts e.message
end