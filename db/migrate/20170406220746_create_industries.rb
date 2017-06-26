class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries, id: false do |t|
      t.primary_key :code
      t.string :name, null: false
      t.integer :division_code, null: false
      t.integer :major_group_code, null: false
      t.integer :industry_group_code, null: false
      t.string :definition, null: false
      t.text :definition_list
    end
  end
end
