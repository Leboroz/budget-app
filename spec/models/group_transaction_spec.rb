require 'rails_helper'

RSpec.describe GroupTransaction, type: :model do
  subject { GroupTransaction.new(group: FactoryBot.create(:group), payment: FactoryBot.create(:payment)) }
  before { subject.save }

  describe '#increase_total_amount' do
    context 'on save' do
      it 'should increase its group total amount' do
        expect(subject.group.total_amount).to be(subject.payment.amount)
      end
    end
  end
end
