class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :conf_username, :string
    add_column :users, :conf_password, :string
    add_column :users, :jira_username, :string
    add_column :users, :jira_password, :string
  end
end
