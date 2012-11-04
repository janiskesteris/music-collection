class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :manage, Album, user_id: user.id
    can :manage, User, id: user.id
    can :show, Album
  end
end
