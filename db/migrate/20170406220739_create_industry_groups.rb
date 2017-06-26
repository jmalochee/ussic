class CreateIndustryGroups < ActiveRecord::Migration
  def change
    create_table :industry_groups, id: false do |t|
      t.primary_key :code
      t.string :name, null: false
    end
  end
end
