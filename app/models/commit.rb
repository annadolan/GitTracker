class Commit < ApplicationRecord
  def short_sha
    sha[0..6]
  end
end
