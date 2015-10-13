class Recipe < ActiveRecord::Base
  belongs_to :user, counter_cache: true
  has_many :ingredients
  accepts_nested_attributes_for :ingredients, allow_destroy: true
  has_many :instructions
  accepts_nested_attributes_for :instructions, allow_destroy: true

  validates :title, presence: true

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  # This may only work in postgres - not sure.
  def self.search(search)
    self.where("LOWER(title) LIKE LOWER('%#{search}%')")
  end
end
