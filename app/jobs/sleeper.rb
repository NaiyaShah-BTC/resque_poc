class Sleeper
  @queue = :sleep

  def self.perform
    puts "I like to sleep >> #{Time.now}"
  end
end
