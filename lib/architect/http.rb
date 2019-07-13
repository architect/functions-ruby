require 'jwe'
require 'json'
require 'cgi'

module Arc
  module HTTP
    module Session

      def self.read(request)

        # look for the headers and return if theres nothing
        raw = request[:event]['headers']['cookie'] || false 
        return {} if raw == false

        # if we found cookie parse it; bail if _idx is missing
        parsed = raw.split(/=|;/).collect(&:strip)
        return {} unless parsed.include? '_idx'

        # return the decrypted payload
        payload = parsed[parsed.index('_idx') + 1]
        key = ENV['ARC_APP_SECRET'] || 'MDAwMDAwMDAwMDAwMDAwMA=='[0..15]
        JSON.parse(JWE.decrypt(payload, key))
      end

      def self.write(payload)
        key = ENV['ARC_APP_SECRET'] || 'MDAwMDAwMDAwMDAwMDAwMA=='[0..15]
        encrypted = JWE.encrypt(payload.to_json, key, alg: 'dir', enc: 'A128GCM')
        maxAge = Time.at 788400000 * 1000
        CGI::Cookie.new(
          'name'=> '_idx', 
          'value'=>  encrypted,
          'maxAge'=> maxAge,
          'expires'=> maxAge,
          'secure'=> true,
          'httpOnly'=> true,
          'path'=> '/',
          'sameSite'=> 'lax'
        ).to_s
      end
    end
  end
end
