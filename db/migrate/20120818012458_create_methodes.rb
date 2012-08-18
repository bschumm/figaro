class CreateMethodes < ActiveRecord::Migration
  def change
    create_table :methodes do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
