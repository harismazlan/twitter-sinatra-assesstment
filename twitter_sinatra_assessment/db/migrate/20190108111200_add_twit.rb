class AddTwit < ActiveRecord::Migration[5.0]
  def change

    create_table :twits do |t|
      t.string :content, :limit => 140
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end

  end
end