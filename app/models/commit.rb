class Commit < ApplicationRecord
  def short_sha
    sha[0..6]
  end

  def self.reverse
    order(created_at: :desc)
  end
end
