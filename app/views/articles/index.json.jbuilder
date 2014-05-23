json.array!(@articles) do |article|
  json.extract! article, :id, :name, :image, :content, :category_id, :summary, :keyword
  json.url article_url(article, format: :json)
end
