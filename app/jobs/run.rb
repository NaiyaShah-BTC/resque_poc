class Run
  @queue = :run

  def self.perform
    # Article.create(name: 'hello', description: 'hey, dd')
    puts "I like to run >> #{Time.now}"
    # sleep(seconds)
  end
end
