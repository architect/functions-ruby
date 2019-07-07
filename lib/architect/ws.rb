require 'aws-sdk-apigateway'
require 'json'
require_relative 'reflect'

module Arc
  module WS 
    ##
    # send a message to a web socket
    #
    def self.send(params)
      id = params[:id]
      payload = params[:payload]
      raise ArgumentError, 'missing id' unless id
      raise ArgumentError, 'missing payload' unless payload
      arc = Arc.reflect
      url = arc['ws']['https']
      api = Aws::ApiGatewayManagementApi::Client.new({endpoint: url})
      api.postToConnection({
        connection_id: id,
        data: JSON.stringify(payload)
      })
    end
  end
end
