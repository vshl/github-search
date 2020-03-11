class Github < ApplicationRecord
  def self.search(params)
    if params
      response = GithubsHelper::GithubApi.new(params).find_repos
      JSON.parse(response)
    else
      Github.all
    end
  end
end
