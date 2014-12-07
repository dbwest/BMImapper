require 'httparty'

module HiwForklift
  class Wrapper
    include HTTParty

    base_uri 'services.healthindicators.gov/v5/REST.svc'

  end
end