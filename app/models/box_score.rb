class BoxScore < ActiveRecord::Base
  has_many :box_score_entries, :dependent => :destroy

  # TODO add validations
end
