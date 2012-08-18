class CreateRessources < ActiveRecord::Migration
  def change
    create_table :ressources do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
