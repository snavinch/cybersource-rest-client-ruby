=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  # The location of the buyer at the time of placing the order.
  class Vasv2taxOrderInformationOrderOrigin
    # Order origin city. This field is not used unless the `orderInformation.orderOrigin.administrativeArea` and `orderInformation.orderOrigin.country` fields are present.  **NOTE** If this field appears in a `lineItems` object, then the value of this field in the `lineItems` object overrides the value of the corresponding field at the request-level or order-level object.  #### Tax Calculation Optional field for U.S. and Canadian taxes. Not applicable to international and value added taxes. The location of the buyer at the time of placing the order. 
    attr_accessor :locality

    # Order origin state. This field is not used unless the `orderInformation.orderOrigin.locality` and `orderInformation.orderOrigin.country` fields are present. Use the [State, Province, and Territory Codes for the United States and Canada](http://apps.cybersource.com/library/documentation/sbc/quickref/states_and_provinces.pdf).  **NOTE** If this field appears in a `lineItems` object, then the value of this field in the `lineItems` object overrides the value of the corresponding field at the request-level or order-level object.  #### Tax Calculation Optional field for U.S. and Canadian taxes. Not applicable to international and value added taxes. The location of the buyer at the time of placing the order. 
    attr_accessor :administrative_area

    # Order origin postal code. This field is not used unless the `orderInformation.orderOrigin.locality`, `orderInformation.orderOrigin.administrativeArea` and `orderInformation.orderOrigin.country` fields are present. Must be sent at the lineItem level to appear in the Tax Detail Report.  **NOTE** If this field appears in a `lineItems` object, then the value of this field in the `lineItems` object overrides the value of the corresponding field at the request-level or order-level object.  #### Tax Calculation Optional field for U.S. and Canadian taxes. Not applicable to international and value added taxes. The location of the buyer at the time of placing the order. 
    attr_accessor :postal_code

    # Order origin country. This field is not used unless the `orderInformation.orderOrigin.administrativeArea` and `orderInformation.orderOrigin.locality` fields are present. Use the [ISO Standard Country Codes](http://apps.cybersource.com/library/documentation/sbc/quickref/countries_alpha_list.pdf).  **NOTE** If this field appears in a `lineItems` object, then the value of this field in the `lineItems` object overrides the value of the corresponding field at the request-level or order-level object.  #### Tax Calculation Optional field for U.S. and Canadian taxes. Not applicable to international and value added taxes. The location of the buyer at the time of placing the order. 
    attr_accessor :country

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'locality' => :'locality',
        :'administrative_area' => :'administrativeArea',
        :'postal_code' => :'postalCode',
        :'country' => :'country'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'locality' => :'String',
        :'administrative_area' => :'String',
        :'postal_code' => :'String',
        :'country' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'locality')
        self.locality = attributes[:'locality']
      end

      if attributes.has_key?(:'administrativeArea')
        self.administrative_area = attributes[:'administrativeArea']
      end

      if attributes.has_key?(:'postalCode')
        self.postal_code = attributes[:'postalCode']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
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
    # @param [Object] locality Value to be assigned
    def locality=(locality)
      @locality = locality
    end

    # Custom attribute writer method with validation
    # @param [Object] administrative_area Value to be assigned
    def administrative_area=(administrative_area)
      @administrative_area = administrative_area
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      @postal_code = postal_code
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      @country = country
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          locality == o.locality &&
          administrative_area == o.administrative_area &&
          postal_code == o.postal_code &&
          country == o.country
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [locality, administrative_area, postal_code, country].hash
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