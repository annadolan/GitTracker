require 'rails_helper'

describe 'A user visits the commits index' do
  it 'and sees all commits' do
    commit = Commit.create(sha: "1234abc", message: "Testing", username: "annadolan", timestamp: "February 13")
    commit2 = Commit.create(sha: "1235abd", message: "Testing2", username: "megantalbot", timestamp: "February 16")
    visit commits_path

    expect(page).to have_content(commit.message)
    expect(page).to have_content("Git Tracker")
  end
end
