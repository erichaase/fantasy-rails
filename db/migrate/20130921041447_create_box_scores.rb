class CreateBoxScores < ActiveRecord::Migration
  def change
    create_table :box_scores do |t|
      t.integer :gid_espn
      t.string :status
      t.date :date

      t.timestamps
    end

    add_index :box_scores, :gid_espn, :unique => true
    add_index :box_scores, :date

    add_column :box_score_entries, :box_score_id, :integer
    add_index  :box_score_entries, :box_score_id
  end
end
