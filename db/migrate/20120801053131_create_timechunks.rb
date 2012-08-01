class CreateTimechunks < ActiveRecord::Migration
  def change
    create_table :timechunks do |t|
      t.string :title
      t.string :description
      t.integer :length
      t.integer :project_id

      t.timestamps
    end
  end
end
