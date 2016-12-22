module WireMockMapper
  module Builders
    module Helpers
      def self.regexp_to_string(regexp)
        %r{^/(.*)/$}.match(regexp.inspect)[1]
      end
    end
  end
end
