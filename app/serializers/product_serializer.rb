class ProductSerializer < ActiveModel::Serializer
  attributes  :id,
              :name,
              :cost,
              :image_url,
              :description

  def image_url
    if object.image.present?
      ENV['assets_host'] + object.image.url.to_s
    end
  end
end
