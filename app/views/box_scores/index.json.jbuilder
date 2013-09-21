json.array!(@box_scores) do |box_score|
  json.extract! box_score, :gid_espn, :status, :date
  json.url box_score_url(box_score, format: :json)
end