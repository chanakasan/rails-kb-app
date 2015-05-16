json.array!(@knowledgebases) do |knowledgebase|
  json.extract! knowledgebase, :id, :name
  json.url knowledgebase_url(knowledgebase, format: :json)
end
