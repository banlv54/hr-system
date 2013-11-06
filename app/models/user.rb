class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :cardID, :display_name, :issub, :user_roles_attributes
  # attr_accessible :title, :body
  has_many :user_roles
  has_many :roles, through: :user_roles

  accepts_nested_attributes_for :user_roles, allow_destroy: true, reject_if: :all_blank
end
