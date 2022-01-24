class UserSerializer < ActiveModel::Serializer
  attributes :id ,:name
  #has_many :chat_boxes
  #has_many :chats, through: :chat_boxes
end
