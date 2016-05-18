class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :chatrooms
  has_many :comments
  # photoをattachファイルとする。stylesで画像サイズを定義できる
  has_attached_file :prof_img, styles: { medium: "300x300>", thumb: "100x100>" }

  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :prof_img, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end