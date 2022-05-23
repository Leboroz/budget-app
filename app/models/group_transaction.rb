class GroupTransaction < ApplicationRecord
  belongs_to :payment
  belongs_to :group
end
