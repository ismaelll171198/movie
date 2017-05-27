class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.text :coment

      t.timestamps
    end
  end
end
