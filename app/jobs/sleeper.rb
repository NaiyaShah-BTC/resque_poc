class Sleeper
  @queue = :sleep

  def self.perform
    Article.create(name: 'hello', description: 'hey, dd')
    puts "I like to sleep >> #{Time.now}"
    # sleep(seconds)
  end
end
