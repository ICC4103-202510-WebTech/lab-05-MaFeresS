# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    return unless user.present?
    can :read, Chat.allowed(user.id)
    can :read, Message
    can :create, Message
    can :create, Chat
    can [:update, :destroy], Message, user: user
  end
end
