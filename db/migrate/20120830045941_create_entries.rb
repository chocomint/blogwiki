class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.column :body, :text
      t.timestamps
    end
    add_index :entries, :created_at
    add_index :entries, :updated_at
  end
end
