class CreateVposts < ActiveRecord::Migration
  def change
    create_table :vposts do |t|
      t.string :content
      t.string :title

      t.timestamps
    end
  end
end
