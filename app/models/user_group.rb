class UserGroup < ApplicationRecord
  has_many :memberships
  has_many :users, through: :memberships
  has_many :invites
  belongs_to :admin, class_name: 'User'
end
