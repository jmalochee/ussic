class MajorGroup < ActiveRecord::Base
  validates :code, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :name, presence: true
  validates :definition, presence: true

  belongs_to :division
  has_many :industries
end
