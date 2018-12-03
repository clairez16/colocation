class UserGroupsController < ApplicationController
  def index
    @colocations = policy_scope(UserGroup).order(created_at: :desc)
  end

  def show
    @colocation = UserGroup.find(params[:id])
    authorize @colocation
  end

  def new
    @colocation = UserGroup.new
    authorize @colocation
  end

  def create
    @colocation = UserGroup.new
    authorize @colocation
  end

  def edit
    @colocation = UserGroup.find(params[:id])
    @invite = Invite.new
    authorize @colocation
  end

  def update
    @colocation = UserGroup.find(params[:id])
    authorize @colocation
  end

  def destroy
    @colocation = UserGroup.find(params[:id])
    authorize @colocation
  end
end
