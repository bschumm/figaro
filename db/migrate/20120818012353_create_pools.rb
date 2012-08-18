class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :name
      t.text :desc
      t.string :kontakt

      t.timestamps
    end
  end
end
