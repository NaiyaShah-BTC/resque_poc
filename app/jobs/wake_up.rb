class WakeUp
  @queue = :wake_up

  def self.perform
    puts "I like to wake up >> #{Time.now}"
  end
end
