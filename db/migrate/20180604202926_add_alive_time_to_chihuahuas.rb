class AddAliveTimeToChihuahuas < ActiveRecord::Migration[5.1]
  def change
    add_column :chihuahuas, :alive_time, :integer, default: 0
  end
end
