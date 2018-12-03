class UserGroupPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.joins(:memberships).where(memberships: { user: user })
    end
  end

  def show?
    record.users.include?(user)
  end

  def new?
    true
  end

  def create?
    true
  end

  def edit?
    record.admin == user
  end

  def update?
    record.admin == user
  end

  def destroy?
    record.admin == user
  end
end
