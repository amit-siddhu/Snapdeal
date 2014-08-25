json.array!(@releases) do |release|
  json.extract! release, :id, :component, :jira_fix_version, :status, :dev_start, :code_freeze, :qa_start, :qa_end, :planned_release, :actual_release, :reason_for_variance, :release_details, :user_id
  json.url release_url(release, format: :json)
end
