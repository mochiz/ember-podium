class AddTwitterToRider < ActiveRecord::Migration
  def change
    add_column :riders, :twitter, :string
  end
end
