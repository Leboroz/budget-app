require 'rails_helper'

RSpec.describe Group, type: :model do
  subject { FactoryBot.build(:group) }
  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
