module Architect 
  module Events
      def self.publish
        puts 'todo: impl arc.events.publish'
      end
  end
  module Queues
    def self.publish
      puts 'todo: impl arc.queues.publish'
    end
  end
  class WS
    def initialize(event)
      @event = event
    end
    def send(params)
    end
  end
  module HTTP
    module Helpers
      def self.url
        puts 'todo: impl arc.http.helpers.url'
      end
      def self.static
        puts 'todo: impl arc.http.helpers.static'
      end
      def self.verify
        puts 'todo: impl arc.http.helpers.verify'
      end
      def self.interpolate
        puts 'todo: impl arc.http.helpers.interpolate'
      end
    end
    module Session
      def self.read
        puts 'todo: impl arc.http.session.read'
      end
      def self.write
        puts 'todo: impl arc.http.session.write'
      end
    end
  end
end
