class Client < ApplicationRecord
  validates :first_name,
            :address,
            :phone_number, presence: true
end
