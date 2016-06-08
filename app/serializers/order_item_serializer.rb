class OrderItemSerializer < ActiveModel::Serializer
  attributes  :id,
              :quantity,
              :product_id
end