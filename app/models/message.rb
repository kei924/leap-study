class Message < ActiveRecord::Base
  belongs_to :chatroom
  belongs_to :student
  belongs_to :teacher
end