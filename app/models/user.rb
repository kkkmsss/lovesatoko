class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :tokyos, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_tokyos, through: :likes, source: :tokyo

  def already_liked?(tokyo)
    self.likes.exists?(tokyo_id: tokyo.id)
  end
end
