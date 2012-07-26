class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
      t.integer :version
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
