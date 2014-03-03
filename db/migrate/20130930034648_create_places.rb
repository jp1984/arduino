class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :state, default:"apagado"

      t.timestamps
    end
  end
end
