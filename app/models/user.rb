class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: {case_sensetive: false},
            length: {minimum: 3, maximum: 20}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: {case_sensetive:false},
            length: {maximum: 20},
            format: {with: VALID_EMAIL_REGEX}
end
