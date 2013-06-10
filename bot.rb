require 'socket'


server = "chat.freenode.net"
port = "6667"
nick = "Ruby IRC Bot"
channel = "#bitmaker"

s = TCPSocket.open(server, port)
s.puts "USER HelloWillBot 0 * HellowWillBot"
s.puts "NICK #{nick}"
s.puts "JOIN #{channel}"
s.puts "PRIVMSG #{channel} :Hello from Jared"

until s.eof? do
	msg = s.gets
	puts msg
end