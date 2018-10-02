class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :bio
      t.string :email
      t.boolean :therapy
      t.belongs_to :planet, foreign_key: true

      t.timestamps
    end
  end
end
