class CreateRsvpTable < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.text :extra
      t.integer :response, default: 0
    end
  end
end
