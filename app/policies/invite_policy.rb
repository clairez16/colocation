class InvitePolicy < ApplicationPolicy
  def create?
    record.sender == record.user_group.admin
  end
end
