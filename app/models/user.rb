class User < ApplicationRecord
    has_secure_password
    validates :name, :email, presence: true
    validates :name, format: { with: /\A[a-z A-Z]+\z/}
    validates :email, uniqueness: true

end
