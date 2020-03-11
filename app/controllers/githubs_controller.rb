class GithubsController < ApplicationController
  def index
    @githubs = Github.search(params[:search])
  end

  private

  def github_params
    params.require(:github).permit(:search)
  end
end
