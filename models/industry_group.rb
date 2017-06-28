class IndustryGroup < ActiveRecord::Base
  validates :code, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :name, presence: true

  has_many :industries
  has_one :major_group, through: :industries
  has_one :division, through: :industries
end
