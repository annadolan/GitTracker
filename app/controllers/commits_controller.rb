class CommitsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    @commits = Commit.all
  end

  def create
    data_json = JSON.parse request.body.read

    @commit = Commit.new(sha: data_json["payload"]["commits"][]["id"], message: data_json["payload"]["commits"][]["message"], username: data_json["payload"]["commits"][]["committer"]["username"], timestamp: data_json["payload"]["commits"][]["timestamp"])
    if @commit.save
      render status: 200
    else
      render status: 500
    end
  end

  private
    # def commit_params
    #   params.require(:commit).permit(:sha, :message, :username, :timestamp)
    # end
end
