class Order < ApplicationRecord
  belongs_to :client
  has_many  :order_items, inverse_of: :order, dependent: :destroy

  as_enum :type, [
    :local,
    :takeout
  ], map: :string

  validates :client,
            :type,
            :total, presence: true

  accepts_nested_attributes_for :order_items, allow_destroy: true

  ransacker :created_at do
    Arel.sql("date(orders.created_at)")
  end
end
