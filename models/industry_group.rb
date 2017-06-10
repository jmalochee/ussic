class IndustryGroup < ActiveRecord::Base
  belongs_to :major_groups
  has_many :industries
end
