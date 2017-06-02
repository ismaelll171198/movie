class CreateProgramas < ActiveRecord::Migration[5.1]
  def change
    create_table :programas do |t|
      t.string :name
      t.integer :stars
      t.string :main_actor
      t.integer :year

      t.timestamps
    end
  end
end
