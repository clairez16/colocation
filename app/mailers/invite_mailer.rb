class InviteMailer < ApplicationMailer
  def new_user_invite(invite, invite_url)
    @invite = invite
    @invite_url = invite_url
    @sender_name = @invite.sender.first_name + ' ' + @invite.sender.last_name

    mail(to: @invite.email, subject: "Welcome to Colocation")
  end

  def existing_user_invite(invite)
  end
end
