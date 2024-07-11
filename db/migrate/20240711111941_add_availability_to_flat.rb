class AddAvailabilityToFlat < ActiveRecord::Migration[7.1]
  def change
    add_column :flats, :availability, :boolean, default: true
  end
end
