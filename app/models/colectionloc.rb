class Colectionloc < ActiveRecord::Base
  belongs_to :organisation, dependent: :destroy

  validates :goods, presence: true
  validates :description, presence: true, length: { maximum: 255 }
end
