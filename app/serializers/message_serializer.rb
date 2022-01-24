class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :msgthread_id, :messagetext, :isDeleted, :created_at
end