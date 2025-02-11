class MyWorker
    include Sidekiq::Worker
  
    def perform(*args)
      puts "Sidekiq worker is running with args: #{args.inspect}"
    end
    
end
  