json.extract! task_manager, :id, :title, :created_at, :updated_at
json.url task_manager_url(task_manager, format: :json)
