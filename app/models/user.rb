class User < ActiveRecord::Base
  scope :order_by_recipe_count, -> { order(recipes_count: :desc) }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :recipes

end
