require "digest"

module Idcon
  module Hash
    module MD5
      def self.hash(string)
        Digest::MD5.hexdigest(string).to_i(16)
      end
    end
  end
end
