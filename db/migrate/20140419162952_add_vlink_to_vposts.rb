class AddVlinkToVposts < ActiveRecord::Migration
  def change
    add_column :vposts, :vlink, :string, default: '#'
  end
end
