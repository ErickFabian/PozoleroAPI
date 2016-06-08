class ClientSerializer < ActiveModel::Serializer
  attributes  :id,
              :first_name,
              :last_name,
              :address,
              :phone_number
end