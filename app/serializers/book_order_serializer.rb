class BookOrderSerializer < ActiveModel::Serializer
  attributes :id, :product, :total_price, :phone_number, :status
end
