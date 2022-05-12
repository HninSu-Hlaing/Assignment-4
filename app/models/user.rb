class User < ApplicationRecord
    has_secure_password
    validates :name,:address,:password,presence: true
    validates :email,presence: true,uniqueness: true
    has_many :posts, :dependent => :destroy
end
