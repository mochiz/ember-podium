class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :race, index: true
      t.references :rider, index: true
      t.string :position
    end
    add_foreign_key :results, :races
    add_foreign_key :results, :riders
  end
end
