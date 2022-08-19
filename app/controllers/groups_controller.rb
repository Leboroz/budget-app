class GroupsController < ApplicationController
  def index
    @groups = current_user.groups
  end

  def create
    new_group = Group.new(groups_params)
    new_group.author = current_user

    respond_to do |format|
      format.html do
        if new_group.save
          flash[:success] = 'Your category has been created'
          redirect_back fallback_location: '/'
        end
      end
    end
  end

  def destroy
    if Group.find(params[:id]).destroy
      flash[:success] = 'Group item has been deleted'
    else
      flash[:alert] = 'Group item could not be deleted'
    end
    redirect_back fallback_location: '/'
  end

  private

  def groups_params
    params.require(:category).permit(:name, :icon)
  end
end
