class Teacher < ActiveRecord::Base 
    has_many :plans
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    has_secure_password
end