class CreateChihuahuas < ActiveRecord::Migration[5.1]
  def change
    create_table :chihuahuas do |t|
      t.string :name
      t.string :mood, default: "😺"
    end
  end
end
