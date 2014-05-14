class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :vote
      t.belongs_to :user
      t.string :voteable_type
      t.integer :voteable_id

      t.timestamps
    end
  end
end
