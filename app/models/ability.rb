# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    return unless user.present?
    can :read, Chat.allowed(user.id)
    can :read, Message
    can :create, Message
    can :create, Chat
    can [:update, :destroy], Message, user: user
    can :update, User, id: user.id
  end
end
