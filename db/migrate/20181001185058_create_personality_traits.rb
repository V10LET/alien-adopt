class CreatePersonalityTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :personality_traits do |t|
      t.belongs_to :personality, foreign_key: true
      t.belongs_to :alien, foreign_key: true

      t.timestamps
    end
  end
end
