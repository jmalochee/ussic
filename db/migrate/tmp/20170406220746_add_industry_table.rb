class AddIndustryTable < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.integer :code, key:
      t.string :industry_name, null: false
      t.belongs_to :industry_group, column: :code, null: false
      t.string :definition
    end
  end
end
