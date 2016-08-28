class User < ActiveRecord::Base
  has_many :recipes
  scope :order_by_recipe_count, -> {
    select("users.id, users.name, count(recipes.id) AS recipe_count").
    joins('LEFT JOIN recipes ON recipes.user_id = users.id').
    group("users.id").
    order("recipe_count DESC")
  }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable



end
