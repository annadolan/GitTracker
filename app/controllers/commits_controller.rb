class CommitsController < ApplicationController
  def index
    @commits = Commit.all
  end

  def create
    data_json = JSON.parse request.body.read
    
    @commit = Commit.create(commit_params)
  end

  private
    # def commit_params
    #   params.require(:commit).permit(:sha, :message, :username, :timestamp)
    # end
end
