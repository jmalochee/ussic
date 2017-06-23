class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions, id: false do |t|
      t.string :code, limit: 1, null: false
      t.string :name, null: false
      t.string :definition
    end

    add_index :divisions, :code, unique: true
  end
end
