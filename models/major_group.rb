class MajorGroup < ActiveRecord::Base
  validates :code, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :name, presence: true
  validates :definition, presence: true

  has_many :industries
  has_many :industry_groups, through: :industries
  belongs_to :division, through: :industries
end
