class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.string :title
      t.datetime :starttime
      t.datetime :endtime
      t.string :laititude
      t.string :longitude
      t.string :code
      t.integer :count
      t.integer :signmessagecount

      t.timestamps
    end
  end
end
