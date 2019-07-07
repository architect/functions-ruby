require 'aws-sdk-sns'
require 'json'
require_relative 'reflect'

module Arc
  module Events
    ##
    # publish a message to an SNS Topic
    #
    def self.publish(params)
      name = params[:name]
      payload = params[:payload]
      raise ArgumentError, 'missing name' unless name
      raise ArgumentError, 'missing payload' unless payload
      arc = Arc.reflect
      arn = arc['events'][name]
      sns = Aws::SNS::Client.new
      sns.publish :topic_arn=> arn, :message=> JSON.generate(payload)
    end
  end
end
