class CreateEventRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :event_roles do |t|
      t.references :event, foreign_key: true
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
