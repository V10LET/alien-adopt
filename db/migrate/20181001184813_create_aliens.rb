class CreateAliens < ActiveRecord::Migration[5.2]
  def change
    create_table :aliens do |t|
      t.string :name
      t.string :bio
      t.boolean :therapy
      t.belongs_to :planet, foreign_key: true
      t.belongs_to :owner, foreign_key: true
      t.belongs_to :toy, foreign_key: true

      t.timestamps
    end
  end
end
