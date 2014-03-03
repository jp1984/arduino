class AddNumberInterfaceToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :number_interface, :integer
  end
end
