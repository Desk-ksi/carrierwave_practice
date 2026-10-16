class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts do |t|
      t.json :images
      t.timestamps
    end
  end
end
