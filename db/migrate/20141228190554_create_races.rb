class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.string :icon
      t.string :image
      t.datetime :start_at
      t.datetime :end_at
      t.string :url
    end
  end
end
