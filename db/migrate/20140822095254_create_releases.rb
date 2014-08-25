class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :component
      t.string :jira_fix_version
      t.string :status
      t.date :dev_start
      t.date :code_freeze
      t.date :qa_start
      t.string :qa_end
      t.date :planned_release
      t.date :actual_release
      t.string :reason_for_variance
      t.string :release_details
      t.integer :user_id

      t.timestamps
    end
  end
end
