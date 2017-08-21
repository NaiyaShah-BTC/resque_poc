class WakeUp
  @queue = :wake_up

  def self.perform
    # Article.create(name: 'hello', description: 'hey, dd')
    puts "I like to wake up >> #{Time.now}"
    # sleep(seconds)
  end
end
