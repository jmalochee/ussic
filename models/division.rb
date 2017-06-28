class Division < ActiveRecord::Base
  self.primary_key = 'code'

  validates :code, presence: true, length: { is: 1 }, format: { with: /[A-J]/, message: "only A-J valid" }
  validates :name, presence: true
  validates :definition, presence: true

  has_many :industries
  has_many :major_groups, through: :industries
  has_many :industry_groups, through: :industries
end
