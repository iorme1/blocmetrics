class User < ActiveRecord::Base

  has_many :applications

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
