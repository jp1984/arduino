class ChangeStateInPlaces < ActiveRecord::Migration
  def change
    change_column :places, :state, :boolean, default: false
  end
end
