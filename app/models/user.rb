class User < ApplicationRecord
    after_commit :send_welcome_email, on: :create
  
    private
  
    def send_welcome_email
      SendWelcomeEmailJob.perform_later(self)
    end
end
  