class Message < ApplicationRecord
    has_one :msgthreads
    has_one :users
end
