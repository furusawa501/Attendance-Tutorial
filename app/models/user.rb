class User < ApplicationRecord
  before_save{ self.email = email.downcase }
  
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 100 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum:6 }
end

# 存在性
# =>presence: true
# 最大50文字まで
# =>maximum: 50
# 正規表現によるメールアドレスのフォーマット
# 一意であること
# =>uniqueness: true
# password
# 最小6文字から
# =>minimum: 6
