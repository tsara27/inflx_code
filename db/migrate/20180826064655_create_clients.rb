class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :status, default: 0
      t.timestamps
    end

    add_index :clients, :status
  end
end
