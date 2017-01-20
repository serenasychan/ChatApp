class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true, length: {minimum: 2, maximum: 1000}


  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy
  
end
