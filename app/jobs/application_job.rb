class ApplicationJob < ActiveJob::Base
  self.queue_adapter = :resque
end
