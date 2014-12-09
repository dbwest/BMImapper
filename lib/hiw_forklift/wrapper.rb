require 'httparty'

module HiwForklift
  class Wrapper
    include HTTParty
    attr_accessor :id, :keyword
    KEY = 

    base_uri 'services.healthindicators.gov/v5/REST.svc'
    
    def initialize hsh={}
        hsh.each do |k,v|
            self.send("#{k}=", v)
            @id = 2
        end
    end
    #def id
    #    2
    #end
  end
end