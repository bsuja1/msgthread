class User < ApplicationRecord
    has_many :msgthreads, :dependent => :destroy
    has_many :messages, through: :threads
end
