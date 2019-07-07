require 'aws-sdk-sqs'
require 'json'
require_relative 'reflect'

module Arc
  module Queues 
    ##
    # publish a message to an SQS Queue
    #
    def self.publish(params)
      name = params[:name]
      payload = params[:payload]
      raise ArgumentError, 'missing name' unless name
      raise ArgumentError, 'missing payload' unless payload
      arc = Arc.reflect
      url = arc['queues'][name]
      sqs = Aws::SQS::Client.new
      sqs.send_message({
        queue_url: url, 
        delay_seconds: 0, 
        message_body: JSON.generate(payload)
      })
    end
  end
end
