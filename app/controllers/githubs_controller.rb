class GithubsController < ApplicationController
  before_action :set_github, only: [:show, :edit, :update, :destroy]

  def index
    @githubs = Github.search(params[:search])
  end

  private

  def github_params
    params.require(:github).permit(:search)
  end
end
