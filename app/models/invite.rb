class Invite < ApplicationRecord
  belongs_to :user_group
  belongs_to :sender, class_name: 'User'
  belongs_to :recipient, class_name: 'User', optional: true

  before_create :generate_token

  private

  def generate_token
    self.token = Digest::SHA1.hexdigest([self.user_group_id, Time.now, rand].join)
  end
end
