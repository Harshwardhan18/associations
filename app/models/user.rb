class User < ApplicationRecord
    has_one :account
    accepts_nested_attributes_for :account
end
