class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :title, :null => false
      t.integer :position, :null => false

      t.timestamps
    end
  end
end
