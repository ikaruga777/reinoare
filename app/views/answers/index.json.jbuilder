json.array!(@answers) do |answer|
  json.extract! answer, :id, :user_id, :question01, :question02, :question03, :question04, :question05, :chief_organizer, :organizer01, :organizer02, :organizer03, :organizer04
  json.url answer_url(answer, format: :json)
end
