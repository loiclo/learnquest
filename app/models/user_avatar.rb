class UserAvatar < ApplicationRecord
  belongs_to :avatar
  belongs_to :user
end