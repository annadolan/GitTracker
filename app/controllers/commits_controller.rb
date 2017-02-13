class CommitsController < ApplicationController
  def index
    @commits = Commit.all
  end

  def create
    data_json = JSON.parse request.body.read

    @commit = Commit.create(sha: params["commits"]["id"], message: params["commits"]["message"], username: params["commits"]["committer"]["username"], timestamp: params["commits"]["timestamp"])
  end

  private
    # def commit_params
    #   params.require(:commit).permit(:sha, :message, :username, :timestamp)
    # end
end
