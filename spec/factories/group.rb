require 'faker'

FactoryBot.define do
  factory :group do
    name { 'group' }
    total_amount { 0 }
    author { FactoryBot.create :user }
    icon { 'truck' }
  end
end
