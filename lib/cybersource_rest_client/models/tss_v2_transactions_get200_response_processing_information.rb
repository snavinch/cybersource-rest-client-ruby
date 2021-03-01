=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class TssV2TransactionsGet200ResponseProcessingInformation
    # Indicates that the transaction includes industry-specific data.  Possible Values: - `airline` - `restaurant` - `lodging` - `auto_rental` - `transit` - `healthcare_medical` - `healthcare_transit` - `transit`  #### Card Present, Airlines and Auto Rental You must set this field to `airline` in order for airline data to be sent to the processor. For example, if this field is not set to `airline` or is not included in the request, no airline data is sent to the processor.  You must set this field to `restaurant` in order for restaurant data to be sent to the processor. When this field is not set to `restaurant` or is not included in the request, no restaurant data is sent to the processor.  You must set this field to `auto_rental` in order for auto rental data to be sent to the processor. For example, if this field is not set to `auto_rental` or is not included in the request, no auto rental data is sent to the processor.  Restaurant data is supported only on CyberSource through VisaNet. 
    attr_accessor :industry_data_type

    # Type of digital payment solution for the transaction.  
    attr_accessor :payment_solution

    # Type of transaction. Some payment card companies use this information when determining discount rates.  #### Used by **Authorization** Required payer authentication transactions; otherwise, optional. **Credit** Required for standalone credits on Chase Paymentech solutions; otherwise, optional. Only `internet`, `moto`, `install`, `recurring`, and `recurring_internet` are valid values.  #### Ingenico ePayments When you omit this field for Ingenico ePayments, the processor uses the default transaction type they have on file for you instead of the default value (listed in Appendix I, \"Commerce Indicators,\" on page 441.)  #### Payer Authentication Transactions For the possible values and requirements, see \"Payer Authentication,\" page 195.  #### Other Types of Transactions See Appendix I, \"Commerce Indicators,\" on page 441.  #### Card Present You must set this field to `retail`. This field is required for a card-present transaction. Note that this should ONLY be used when the cardholder and card are present at the time of the transaction. For all keyed transactions originated from a POS terminal where the cardholder and card are not present, commerceIndicator should be submitted as “moto\" 
    attr_accessor :commerce_indicator

    # Payouts transaction type. Required for OCT transactions. This field is a pass-through, which means that CyberSource does not verify the value or modify it in any way before sending it to the processor. **Note** When the request includes this field, this value overrides the information in your CyberSource account.  For valid values, see the `invoiceHeader_businessApplicationID` field description in [Payouts Using the Simple Order API.](http://apps.cybersource.com/library/documentation/dev_guides/payouts_SO/Payouts_SO_API.pdf) 
    attr_accessor :business_application_id

    attr_accessor :authorization_options

    attr_accessor :bank_transfer_options

    attr_accessor :japan_payment_options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'industry_data_type' => :'industryDataType',
        :'payment_solution' => :'paymentSolution',
        :'commerce_indicator' => :'commerceIndicator',
        :'business_application_id' => :'businessApplicationId',
        :'authorization_options' => :'authorizationOptions',
        :'bank_transfer_options' => :'bankTransferOptions',
        :'japan_payment_options' => :'japanPaymentOptions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'industry_data_type' => :'String',
        :'payment_solution' => :'String',
        :'commerce_indicator' => :'String',
        :'business_application_id' => :'String',
        :'authorization_options' => :'TssV2TransactionsGet200ResponseProcessingInformationAuthorizationOptions',
        :'bank_transfer_options' => :'TssV2TransactionsGet200ResponseProcessingInformationBankTransferOptions',
        :'japan_payment_options' => :'TssV2TransactionsGet200ResponseProcessingInformationJapanPaymentOptions'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'industryDataType')
        self.industry_data_type = attributes[:'industryDataType']
      end

      if attributes.has_key?(:'paymentSolution')
        self.payment_solution = attributes[:'paymentSolution']
      end

      if attributes.has_key?(:'commerceIndicator')
        self.commerce_indicator = attributes[:'commerceIndicator']
      end

      if attributes.has_key?(:'businessApplicationId')
        self.business_application_id = attributes[:'businessApplicationId']
      end

      if attributes.has_key?(:'authorizationOptions')
        self.authorization_options = attributes[:'authorizationOptions']
      end

      if attributes.has_key?(:'bankTransferOptions')
        self.bank_transfer_options = attributes[:'bankTransferOptions']
      end

      if attributes.has_key?(:'japanPaymentOptions')
        self.japan_payment_options = attributes[:'japanPaymentOptions']
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
    # @param [Object] industry_data_type Value to be assigned
    def industry_data_type=(industry_data_type)
      @industry_data_type = industry_data_type
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_solution Value to be assigned
    def payment_solution=(payment_solution)
      @payment_solution = payment_solution
    end

    # Custom attribute writer method with validation
    # @param [Object] commerce_indicator Value to be assigned
    def commerce_indicator=(commerce_indicator)
      @commerce_indicator = commerce_indicator
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          industry_data_type == o.industry_data_type &&
          payment_solution == o.payment_solution &&
          commerce_indicator == o.commerce_indicator &&
          business_application_id == o.business_application_id &&
          authorization_options == o.authorization_options &&
          bank_transfer_options == o.bank_transfer_options &&
          japan_payment_options == o.japan_payment_options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [industry_data_type, payment_solution, commerce_indicator, business_application_id, authorization_options, bank_transfer_options, japan_payment_options].hash
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
