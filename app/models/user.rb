class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role
  has_many :posts
  validates_presence_of :name

  def self.available_roles
    Role.where.not(name:"Admin").all
  end
  
end

 