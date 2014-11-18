json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :title, :book_id
  json.url chapter_url(chapter, format: :json)
end
