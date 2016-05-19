class Teacher < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :chatrooms
  has_many :comments
  has_many :requests
  mount_uploader :image , ImageUploader
  mount_uploader :lesson_p01 , ImageUploader
  mount_uploader :lesson_p02 , ImageUploader
  mount_uploader :lesson_p03 , ImageUploader
end
