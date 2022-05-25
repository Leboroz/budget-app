require 'faker'

FactoryBot.define do
  factory :payment do
    name { 'dinner' }
    amount { Faker::Number.decimal(l_digits: 2) }
    author { FactoryBot.create(:user) }
  end
end
