class CreateOtters < ActiveRecord::Migration[5.2]
  def change
    create_table :otters do |t|
      t.integer :otter_age
      t.string :otter_name
      t.boolean :able_to_work
      t.references :park, foreign_key: true

      t.timestamps
    end
  end
end
