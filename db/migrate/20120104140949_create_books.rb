class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
	t.column :razdel, :string, :limit => 10, :null => false
	t.column :avtor, :string, :limit => 32, :null => false
	t.column :nazv, :string, :limit => 32, :null => false
	t.column :komment, :string, :limit => 500, :null => false

      t.timestamps
    end
  end
end
