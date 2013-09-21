json.array!(@box_score_entries) do |box_score_entry|
  json.extract! box_score_entry, :box_score_id, :pid_espn, :fname, :lname, :status, :min, :fgm, :fga, :tpm, :tpa, :ftm, :fta, :oreb, :reb, :ast, :stl, :blk, :to, :pf, :plus_minus, :pts
  json.url box_score_entry_url(box_score_entry, format: :json)
end
