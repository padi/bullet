module Bullet
  class Notice
    def initialize( console_title, response, call_stack_messages )
      @console_title = console_title || []
      @response = response
      @call_stack_messages = call_stack_messages || []
    end

    def has_contents?
      response != nil 
    end

    def title
      @console_title.join( ', ' )
    end

    def response
      @response.join( "\n" )
    end

    def call_stack
      @call_stack_messages.join( "\n" )
    end
  end
end
