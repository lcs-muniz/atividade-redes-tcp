require 'socket'

def start_client(address, port)
  client = TCPSocket.new(address, port)

  print 'Digite uma mensagem: '
  message = gets.chomp

  client.puts(message)

  client.close
end

if __FILE__ == $0
  DESTINATION = 'localhost'
  PORT = 6000
  start_client(DESTINATION, PORT)
end