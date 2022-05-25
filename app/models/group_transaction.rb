class GroupTransaction < ApplicationRecord
  belongs_to :payment, dependent: :destroy
  belongs_to :group

  after_create :increase_total_amount
  after_destroy :decrease_total_amount

  private
  
  def increase_total_amount
    group.total_amount = 0 if group.total_amount.nil?
    group.total_amount += payment.amount
    group.update(total_amount: group.total_amount)
  end

  def decrease_total_amount
    group.total_amount -= payment.amount
    group.update(total_amount: group.total_amount)
  end
end
