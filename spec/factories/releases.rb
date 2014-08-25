# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :release do
    component "MyString"
    jira_fix_version "MyString"
    status "MyString"
    dev_start "2014-08-22"
    code_freeze "2014-08-22"
    qa_start "2014-08-22"
    qa_end "MyString"
    planned_release "2014-08-22"
    actual_release "2014-08-22"
    reason_for_variance "MyString"
    release_details "MyString"
    user_id 1
  end
end
