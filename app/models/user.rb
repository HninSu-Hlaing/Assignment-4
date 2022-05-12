class User < ApplicationRecord
    validates :name,:address,:password,presence: true
    validates :email,presence: true,uniqueness: true
end
