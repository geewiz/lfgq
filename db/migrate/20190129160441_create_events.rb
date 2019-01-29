class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :time
      t.string :description
      t.string :rw_url
      t.string :ro_url

      t.timestamps
    end
  end
end
