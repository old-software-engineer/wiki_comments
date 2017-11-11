class AddWikiComments < ActiveRecord::Migration[5.1]
  def self.up
    add_column :wiki_pages, :comments_count, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :wiki_pages, :comments_count
  end
end
# rake redmine:plugins:migrate
#rake redmine:plugins:migrate NAME=wiki_comments VERSION=0