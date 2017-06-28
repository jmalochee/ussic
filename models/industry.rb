class Industry < ActiveRecord::Base
  validates :industry_code, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :industry_name, presence: true
  validates :division_code, presence: true, length: { is: 1 }, format: { with: /[A-J]/, message: "only A-J valid" }
  validates :major_group_code, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :industry_group_code, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :industry_definition, presence: true

  belongs_to :industry_group
  belongs_to :major_group
  belongs_to :division
end
