class Payment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :group_transactions
  has_many :groups, through: :group_transactions

  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_float: true }
end
