class OrderPolicy < ApplicationPolicy

  def permitted_attributes
    [
      :client_id,
      :note,
      :total,
      order_items_attributes: [
        :id,
        :quantity,
        :product_id,
        :_destroy,
        :order_id
      ]
    ]
  end
end