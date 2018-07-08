class AddUserRefToHappyTalks < ActiveRecord::Migration[5.2]
  def change
    add_reference :happy_talks, :user
  end
end
