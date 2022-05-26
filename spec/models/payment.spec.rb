require 'rails_helper'

RSpec.describe Payment, type: :model do
  subject { FactoryBot.build :payment }
  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  describe 'amount' do
    it 'amount should be present' do
      subject.amount = nil
      expect(subject).to_not be_valid
    end

    it 'amount should be a float number' do
      subject.amount = 6.to_i
      expect(subject).to_not be_valid
    end
  end
end
