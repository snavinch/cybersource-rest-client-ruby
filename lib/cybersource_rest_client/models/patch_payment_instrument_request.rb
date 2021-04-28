=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class PatchPaymentInstrumentRequest
    attr_accessor :_links

    # The id of the Payment Instrument Token.
    attr_accessor :id

    # The type of token.  Valid values: - paymentInstrument 
    attr_accessor :object

    # Flag that indicates whether customer payment instrument is the dafault. Valid values:  - `true`: Payment instrument is customer's default.  - `false`: Payment instrument is not customer's default. 
    attr_accessor :default

    # Issuers state for the card number. Valid values: - ACTIVE - CLOSED : The account has been closed. 
    attr_accessor :state

    attr_accessor :bank_account

    attr_accessor :card

    attr_accessor :buyer_information

    attr_accessor :bill_to

    attr_accessor :processing_information

    attr_accessor :merchant_information

    attr_accessor :instrument_identifier

    attr_accessor :metadata

    attr_accessor :_embedded

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_links' => :'_links',
        :'id' => :'id',
        :'object' => :'object',
        :'default' => :'default',
        :'state' => :'state',
        :'bank_account' => :'bankAccount',
        :'card' => :'card',
        :'buyer_information' => :'buyerInformation',
        :'bill_to' => :'billTo',
        :'processing_information' => :'processingInformation',
        :'merchant_information' => :'merchantInformation',
        :'instrument_identifier' => :'instrumentIdentifier',
        :'metadata' => :'metadata',
        :'_embedded' => :'_embedded'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_links' => :'Tmsv2customersEmbeddedDefaultPaymentInstrumentLinks',
        :'id' => :'String',
        :'object' => :'String',
        :'default' => :'BOOLEAN',
        :'state' => :'String',
        :'bank_account' => :'Tmsv2customersEmbeddedDefaultPaymentInstrumentBankAccount',
        :'card' => :'Tmsv2customersEmbeddedDefaultPaymentInstrumentCard',
        :'buyer_information' => :'Tmsv2customersEmbeddedDefaultPaymentInstrumentBuyerInformation',
        :'bill_to' => :'Tmsv2customersEmbeddedDefaultPaymentInstrumentBillTo',
        :'processing_information' => :'Tmsv2customersEmbeddedDefaultPaymentInstrumentProcessingInformation',
        :'merchant_information' => :'Tmsv2customersEmbeddedDefaultPaymentInstrumentMerchantInformation',
        :'instrument_identifier' => :'Tmsv2customersEmbeddedDefaultPaymentInstrumentInstrumentIdentifier',
        :'metadata' => :'Tmsv2customersEmbeddedDefaultPaymentInstrumentMetadata',
        :'_embedded' => :'Tmsv2customersEmbeddedDefaultPaymentInstrumentEmbedded'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'_links')
        self._links = attributes[:'_links']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.has_key?(:'default')
        self.default = attributes[:'default']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'bankAccount')
        self.bank_account = attributes[:'bankAccount']
      end

      if attributes.has_key?(:'card')
        self.card = attributes[:'card']
      end

      if attributes.has_key?(:'buyerInformation')
        self.buyer_information = attributes[:'buyerInformation']
      end

      if attributes.has_key?(:'billTo')
        self.bill_to = attributes[:'billTo']
      end

      if attributes.has_key?(:'processingInformation')
        self.processing_information = attributes[:'processingInformation']
      end

      if attributes.has_key?(:'merchantInformation')
        self.merchant_information = attributes[:'merchantInformation']
      end

      if attributes.has_key?(:'instrumentIdentifier')
        self.instrument_identifier = attributes[:'instrumentIdentifier']
      end

      if attributes.has_key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.has_key?(:'_embedded')
        self._embedded = attributes[:'_embedded']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      @id = id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _links == o._links &&
          id == o.id &&
          object == o.object &&
          default == o.default &&
          state == o.state &&
          bank_account == o.bank_account &&
          card == o.card &&
          buyer_information == o.buyer_information &&
          bill_to == o.bill_to &&
          processing_information == o.processing_information &&
          merchant_information == o.merchant_information &&
          instrument_identifier == o.instrument_identifier &&
          metadata == o.metadata &&
          _embedded == o._embedded
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_links, id, object, default, state, bank_account, card, buyer_information, bill_to, processing_information, merchant_information, instrument_identifier, metadata, _embedded].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end