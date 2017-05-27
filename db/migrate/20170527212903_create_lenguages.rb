class CreateLenguages < ActiveRecord::Migration[5.1]
  def change
    create_table :lenguages do |t|
      t.string :name

      t.timestamps
    end
  end
end
