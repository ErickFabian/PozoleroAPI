class OrderPolicy < ApplicationPolicy

  def permitted_attributes
    [
      :client_id,
      :note,
      :total,
      :type,
      :status,
      order_items_attributes: [
        :id,
        :quantity,
        :product_id,
        :_destroy,
        :order_id
      ]
    ]
  end

  def query_params(params)
    (params[:q] || {})
  end
end