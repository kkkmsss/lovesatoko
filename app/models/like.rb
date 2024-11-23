class Like < ApplicationRecord
  belongs_to :tokyo
  has_many :user
  validates_uniqueness_of :tokyo_id, scope: :user_id
end
