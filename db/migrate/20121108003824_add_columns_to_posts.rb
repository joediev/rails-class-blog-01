class AddColumnsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :type, :string
    add_column :posts, :photo_url, :string
    add_column :posts, :quote_body, :text
    add_column :posts, :quote_source, :string
  end
end
