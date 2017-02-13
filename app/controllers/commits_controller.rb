class CommitsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    @commits = Commit.all
  end

  def create
    # data_json = JSON.parse request.body.read
    json = params.to_json
    data_json = JSON.parse(json)

    @commit = Commit.new(sha: data_json["payload"]["commits"][0]["id"], message: data_json["payload"]["commits"][0]["message"], username: data_json["payload"]["commits"][0]["committer"]["username"], timestamp: data_json["payload"]["commits"][0]["timestamp"])
    if @commit.save
      render nothing: true, status: 200
    else
      render nothing: true, status: 500
    end
  end

  private
    # def commit_params
    #   params.require(:commit).permit(:sha, :message, :username, :timestamp)
    # end
end
