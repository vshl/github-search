module GithubsHelper
  class GithubApi
    def initialize(params)
      @params = params
      @uri = 'https://api.github.com/search/repositories'
    end

    def find_repos
      RestClient.get @uri, {params: {q: @params, sort:'stars', order:'desc'}}
    end
  end
end
