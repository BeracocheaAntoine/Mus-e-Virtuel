class CreatePeintures < ActiveRecord::Migration[5.2]
  def change
    create_table :peintures do |t|
      t.string :photo
      t.string :nom
      t.string :auteur
      t.string :date

      t.timestamps
    end
  end
end
