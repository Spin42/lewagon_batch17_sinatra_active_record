class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :votes
      t.timestamps null: false
    end
  end
end
