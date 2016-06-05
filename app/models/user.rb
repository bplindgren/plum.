class User < ApplicationRecord
  has_secure_password

  has_many :memberships, foreign_key: :member_id
  has_many :groups, through: :memberships
  has_many :events, through: :groups
  has_many :expenses, foreign_key: :spender_id
  has_many :bills

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
end
