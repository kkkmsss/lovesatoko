class Tokyo < ApplicationRecord
    hasmany :user
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
end
