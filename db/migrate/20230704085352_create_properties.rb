class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
