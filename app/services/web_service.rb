require 'savon'

class WebService
  attr_accessor :client, :call_result

  def initialize(wsdl)
    @wsdl = wsdl
    @client = nil
  end

  def client
    raise "wsdl URL was not set" if @wsdl.blank?

    options = { wsdl: @wsdl, open_timeout: 5, read_timeout: 5,
                pretty_print_xml: true, raise_errors: false }

    @client ||= Savon.client(options)
  end

  def operations
    client.operations
  end

  def call(op, message)
    @call_result = client.call(op.to_sym, message: JSON.parse(message))
    return nil if @call_result.nil?
    Rails.logger.debug "success calling external webservice #{@call_result.inspect}"
    @call_result.body["#{op}_response".to_sym].to_json
  rescue Savon::Error => error
    Rails.logger.debug ":( failure calling external webservice #{error.inspect} Call result: #{@call_result.inspect}"
  end

end
