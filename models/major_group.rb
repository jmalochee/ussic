class MajorGroup < ActiveRecord::Base
  belongs_to :division
  has_many :industry_groups
end
