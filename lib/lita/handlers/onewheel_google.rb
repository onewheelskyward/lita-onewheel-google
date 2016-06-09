require 'rest-client'
require 'json'
require 'addressable/uri'
require 'onewheel-google'

module Lita
  module Handlers
    class OnewheelGoogle < Handler
      config :custom_search_engine_id
      config :google_api_key
      config :safe_search, required: false, default: 'medium'

      route /^google\s+(.*)$/, :search, command: true

      def search(response)
        query = response.matches[0][0]
        search_result = ::OnewheelGoogle::search(query, config.custom_search_engine_id, config.google_api_key, config.safe_search)
        result = JSON.parse(search_result)
        response.reply "#{result['items'][0]['link']} #{result['items'][0]['title']}: #{result['items'][0]['snippet']}"
      end

      Lita.register_handler(self)
    end
  end
end
