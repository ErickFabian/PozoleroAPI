class Order < ApplicationRecord
  belongs_to :client
  has_many  :order_items, inverse_of: :order

  as_enum :type, [
    :local,
    :takeout
  ], map: :string

  validates :client,
            :total, presence: true

  accepts_nested_attributes_for :order_items, allow_destroy: true
end
