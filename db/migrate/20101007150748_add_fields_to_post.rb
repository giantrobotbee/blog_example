class AddFieldsToPost < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.string :title
      t.text   :body
    end

    add_index :posts, [:title, :body]
  end

  def self.down
    remove_index :posts, :column => [:title, :body]

    raise ActiveRecord::IrreversibleMigration
  end
end
