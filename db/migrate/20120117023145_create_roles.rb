class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :person_id, :null => false
      t.integer :project_id, :null => false
      t.integer :status_id, :null => false, :default => 1
      t.string :title, :null => false

      t.timestamps
    end
  end
end
