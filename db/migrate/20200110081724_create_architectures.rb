class CreateArchitectures < ActiveRecord::Migration[5.2]
  def change
    create_table :architectures do |t|
      t.string :photo
      t.string :nom
      t.string :auteur
      t.string :date

      t.timestamps
    end
  end
end
