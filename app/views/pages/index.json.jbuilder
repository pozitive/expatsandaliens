json.array!(@pages) do |page|
  json.extract! page, :id, :name, :content, :summary, :keyword
  json.url page_url(page, format: :json)
end
