class CommitsController < ApplicationController
  def index
    @commits = Commit.all
  end

  def create
    data_json = JSON.parse request.body.read

    @commit = Commit.create(sha: params["payload"]["commits"]["id"], message: params["payload"]["commits"]["message"], username: params["payload"]["commits"]["committer"]["username"], timestamp: params["payload"]["commits"]["timestamp"])
  end

  private
    # def commit_params
    #   params.require(:commit).permit(:sha, :message, :username, :timestamp)
    # end
end
