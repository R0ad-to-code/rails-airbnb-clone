class RemoveAvailabilityFromFlat < ActiveRecord::Migration[7.1]
  def change
    remove_column :flats, :availability, :boolean
  end
end
