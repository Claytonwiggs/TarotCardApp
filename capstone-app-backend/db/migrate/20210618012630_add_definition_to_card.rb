class AddDefinitionToCard < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :definition, :string
  end
end
