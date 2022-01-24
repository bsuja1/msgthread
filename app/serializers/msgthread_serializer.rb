class MsgthreadSerializer < ActiveModel::Serializer
  attributes :id , :title, :user_id
  #has_many :users
  #has_many :chat_boxes
end
