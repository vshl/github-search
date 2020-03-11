class Github < ApplicationRecord
  def self.search(params)
    return unless params

    response = GithubsHelper::GithubApi.new(params).find_repos
    JSON.parse(response)
  end
end
