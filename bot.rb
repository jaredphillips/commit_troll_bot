require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.freenode.org"
    c.channels = ["#cinch-bots"]
  end

  on :message, "hello" do |m|
    m.reply "Hello, #{m.user.nick}"
    puts "How many Github commits do you have?"
    answer = gets.chomp
    if answer.is_a?(Integer)
    	puts "Cool, cool"
    	puts "Last time I checked, Jared has #{answer + 1} commits on Github."
    else
    	puts "That's not a number"
    end
  end
end

bot.start