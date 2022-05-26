class TransactionsController < ApplicationController
  def index
    @group = Group.includes(group_transactions: [:payment]).find(params[:group_id])
    @transactions = @group.group_transactions
  end

  def create
    groups = Group.find(transactions_params[:groups].reject(&:empty?))
    groups.each do |group|
      payment = Payment.new(name: transactions_params[:name], amount: transactions_params[:amount],
                            author: current_user)
      next unless payment.save

      gt = GroupTransaction.new(group:, payment:)
      if gt.save
        flash[:success] = 'Transaction created successfully'
        redirect_back fallback_location: '/'
      end
    end
  end

  private

  def transactions_params
    params.require(:transaction).permit(:name, :amount, groups: [])
  end
end
