# HIW forklift is a wrapper for the Health Indicator Warehouse API

Dir[File.dirname(__FILE__) + '/hiw_forklift/*.rb'].each do |file|
  require file
end