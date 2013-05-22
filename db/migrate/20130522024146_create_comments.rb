class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.string :author_email
      t.string :author_url
      t.text :body
      t.references :post

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
