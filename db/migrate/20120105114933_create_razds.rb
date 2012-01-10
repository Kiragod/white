class CreateRazds < ActiveRecord::Migration
  def change
    create_table :razds do |t|
      t.string :name

      t.timestamps
    end
  end
end
