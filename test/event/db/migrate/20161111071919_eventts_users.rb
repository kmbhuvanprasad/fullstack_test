class EventtsUsers < ActiveRecord::Migration
  def change
  	create_table :eventts_users do |t|
      t.integer :users_id
      t.integer :eventt_id
  end
  end
end
