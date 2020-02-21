class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :rating, :cuisine_type, :healthy
  has_one :user
end
