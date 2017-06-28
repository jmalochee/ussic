class IndustryGroup < ActiveRecord::Base
  validates :code, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :name, presence: true

  has_many :industries
  belongs_to :major_group, through: :industries
  belongs_to :division, through: :industries
end
