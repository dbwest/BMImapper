require 'httparty'

module HiwForklift
  class Wrapper
    include HTTParty
    attr_accessor :id, :keyword
    @options = {api_key: '1b27cecc14fa42eaa0a8d7ac6942406f'}

    base_uri 'services.healthindicators.gov/v5/REST.svc'
    
    def initialize hsh={}
        hsh.each do |k,v|
            self.send("#{k}=", v)
            @id = 2
        end
    end
    def record
        response = self.class.get('/Keywords/1?Key=1b27cecc14fa42eaa0a8d7ac6942406f')
        puts response
        response
    end
    #def id
    #    2
    #end
  end
end