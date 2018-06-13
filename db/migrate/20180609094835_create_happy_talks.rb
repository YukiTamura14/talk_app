class CreateHappyTalks < ActiveRecord::Migration[5.2]
  def change
    create_table :happy_talks do |t|
      t.string:content
    end
  end
end
