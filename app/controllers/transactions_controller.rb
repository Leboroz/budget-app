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
      gt.save
    end
    flash[:success] = 'Transaction created successfully'
    redirect_back fallback_location: '/'
  end

  def destroy
    if GroupTransaction.find_by(group_id: params[:group_id], payment_id: params[:id]).destroy
      flash[:success] = 'transaction item has been deleted'
    else
      flash[:alert] = 'transaction item could not be deleted'
    end
    redirect_back fallback_location: '/'
  end

  private

  def transactions_params
    params.require(:transaction).permit(:name, :amount, groups: [])
  end
end
