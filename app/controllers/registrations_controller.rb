class RegistrationsController < Devise::RegistrationsController
  def new
    super
    @token = params[:invite_token] # pulls the value from the url query string
  end

  def create
    super
    binding.pry
    @token = params[:invite_token]
    unless @token.nil?
      org = Invite.find_by_token(@token).user_group # find the user group attached to the invite
      @user.user_groups.push(org) # add this user to the new user group as a member
    end
  end

  def edit
    super
  end

  def update
    super
  end

  def destroy
    super
  end
end
