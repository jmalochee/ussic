class CreateMajorGroups < ActiveRecord::Migration
  def change
    create_table :major_groups, id: false do |t|
      t.primary_key :code
      t.string :name, null: false
      t.text :definition, null: false
    end
  end
end
