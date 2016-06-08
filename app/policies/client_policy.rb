class ClientPolicy < ApplicationPolicy
  def permitted_attributes
    [
      :first_name,
      :last_name,
      :address,
      :phone_number
    ]
  end
end