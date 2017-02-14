class Commit < ApplicationRecord
  def short_sha
    sha[0..6]
  end

  def self.reverse
    order(created_at: :desc).limit(10)
  end

  def self.today
    where('created_at >= ?', Time.zone.now.beginning_of_day).count
  end

  def self.last_commit
    last.created_at
  end
end
