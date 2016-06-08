class OrderSerializer < ActiveModel::Serializer
  attributes  :id,
              :note,
              :created_at,
              :client_id,
              :order_item_ids
end
