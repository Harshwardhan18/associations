class User < ApplicationRecord
    has_one :account, dependent: :destroy
    accepts_nested_attributes_for :account
end
