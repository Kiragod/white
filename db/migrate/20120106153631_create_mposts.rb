class CreateMposts < ActiveRecord::Migration
  def change
    create_table :mposts do |t|
      t.string :userh
      t.string :text

      t.timestamps
    end
  end
end
