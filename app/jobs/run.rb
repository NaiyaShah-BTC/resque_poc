class Run
  @queue = :run

  def self.perform
    puts "I like to run >> #{Time.now}"
  end
end
