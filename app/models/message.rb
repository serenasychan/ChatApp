class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room
  validates :body, presence: true, length: {minimum: 2, maximum: 1000}
  after_create_commit { MessageBroadcastJob.perform_later(self) }


  def timestamp
  	created_at.in_time_zone(-8).strftime('%H:%M:%S %Z %d %B %Y')
  end
  
end
