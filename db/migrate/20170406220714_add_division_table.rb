class AddDivisionTable < ActiveRecord::Migration
  def change
    create_table :division do |t|
      t.string :code, :primary, :key, null: false, limit: 1
      t.string :name, null: false
      t.string :description
    end
  end
end
