class Group < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :group_transactions, dependent: :destroy
  has_many :payments, through: :group_transactions

  validates :name, presence: true
end
