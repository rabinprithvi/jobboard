class AddIndexToCity < ActiveRecord::Migration
  def change
  	add_index :jobs, :city
  end
end
