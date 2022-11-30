class AddHotel < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name, :adress, null: false
      t.integer :rooms, :stars, null: false
      t.boolean :status, default: true

      t.timestamps
    end
  end
end
