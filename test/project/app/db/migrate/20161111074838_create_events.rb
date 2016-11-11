class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :venue
      t.string :date
      t.string :time
      t.string :description
      t.string :invited
      t.string :status

      t.timestamps null: false
    end
  end
end
