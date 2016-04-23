json.array!(@pic_comments) do |pic_comment|
  json.extract! pic_comment, :id, :user_id, :pic_id, :commemt
  json.url pic_comment_url(pic_comment, format: :json)
end
