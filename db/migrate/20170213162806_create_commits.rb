class CreateCommits < ActiveRecord::Migration[5.0]
  def change
    create_table :commits do |t|
      t.string :sha
      t.string :message
      t.string :username
      t.string :timestamp

      t.timestamps
    end
  end
end
