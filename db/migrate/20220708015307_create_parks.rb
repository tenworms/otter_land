class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :title
      t.boolean :hiring_workers
      t.string :number_of_workers
      t.string :integer

      t.timestamps
    end
  end
end
