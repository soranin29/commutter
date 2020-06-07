class User < ApplicationRecord
    has_secure_password
    has_many :posts
    validates :name, 
      presence: true, 
      length: { maximum: 16 }, 
      format: {
          with: /\A[a-z0-9]+\z/,
          message: 'は小文字で入力してください'
      }
    validates :email, presence: true
    validates :password_digest, presence: true, length: { in: 8..16 }
end
