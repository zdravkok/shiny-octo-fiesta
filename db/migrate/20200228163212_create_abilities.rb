class CreateAbilities < ActiveRecord::Migration[6.0]
  def change
    create_table :abilities do |t|
      t.string :name
      t.integer :page
      t.string :pool
      t.string :cost
      t.string :category
      t.string :power
      t.string :kind
      t.string :foci
      t.string :set

      t.timestamps
    end
  end
end
