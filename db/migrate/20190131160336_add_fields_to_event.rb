class AddFieldsToEvent < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :time
    add_column :events, :date, :date
    add_column :events, :time, :time
  end
end
