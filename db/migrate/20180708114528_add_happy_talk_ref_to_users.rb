class AddHappyTalkRefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :happy_talk
  end
end
