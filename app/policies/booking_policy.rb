class BookingPolicy < ApplicationPolicy
  def show?
    return true
  end
  
  def create?
    return true
  end
  
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
