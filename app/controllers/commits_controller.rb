class CommitsController < ApplicationController
  def index
    @commits = Commit.all
  end

  def create
    data_json = JSON.parse request.body.read

    @commit = Commit.create(sha: data_json["payload"]["commits"]["id"], message: data_json["payload"]["commits"]["message"], username: data_json["payload"]["commits"]["committer"]["username"], timestamp: data_json["payload"]["commits"]["timestamp"])
  end

  private
    # def commit_params
    #   params.require(:commit).permit(:sha, :message, :username, :timestamp)
    # end
end
