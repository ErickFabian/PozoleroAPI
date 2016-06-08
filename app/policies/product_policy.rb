class ProductPolicy < ApplicationPolicy
  def permitted_attributes
    [
      :id,
      :name,
      :cost,
      :description,
      :image
    ]
  end
end