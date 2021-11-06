class CreateCardFortunes < ActiveRecord::Migration[6.1]
  def change
    create_table :card_fortunes do |t|
      t.integer :fortune_id
      t.integer :card_id

      t.timestamps
    end
  end
end
