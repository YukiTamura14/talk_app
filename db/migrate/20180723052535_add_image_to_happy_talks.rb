class AddImageToHappyTalks < ActiveRecord::Migration[5.2]
  def change
    add_column :happy_talks, :image, :string
  end
end
