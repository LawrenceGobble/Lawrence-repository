class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :uname
      t.string :content

      t.timestamps
    end
  end
end
