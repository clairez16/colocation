class InvitesController < ApplicationController
  def create
    @invite = Invite.new(invite_params)
    @invite.sender_id = current_user.id # set the sender to the current user
    authorize @invite
    if @invite.save
      InviteMailer.new_user_invite(@invite, new_user_registration_url(invite_token: @invite.token)).deliver #send the invite data to our mailer to deliver the email
    else
      render :new
      # oh no, creating a new invitation failed
    end
  end

  private

  def invite_params
    params.require(:invite).permit(:email, :user_group_id)
  end
end
