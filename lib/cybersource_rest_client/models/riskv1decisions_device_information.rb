=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Riskv1decisionsDeviceInformation
    # Whether the customer’s browser accepts cookies. This field can contain one of the following values: - `yes`: The customer’s browser accepts cookies. - `no`: The customer’s browser does not accept cookies. 
    attr_accessor :cookies_accepted

    # IP address of the customer.  #### Used by **Authorization, Capture, and Credit** Optional field. 
    attr_accessor :ip_address

    # DNS resolved hostname from `ipAddress`.
    attr_accessor :host_name

    # Field that contains the session ID that you send to Decision Manager to obtain the device fingerprint information. The string can contain uppercase and lowercase letters, digits, hyphen (-), and underscore (_). However, do not use the same uppercase and lowercase letters to indicate different session IDs.  The session ID must be unique for each merchant ID. You can use any string that you are already generating, such as an order number or web session ID.  The session ID must be unique for each page load, regardless of an individual’s web session ID. If a user navigates to a profiled page and is assigned a web session, navigates away from the profiled page, then navigates back to the profiled page, the generated session ID should be different and unique. You may use a web session ID, but it is preferable to use an application GUID (Globally Unique Identifier). This measure ensures that a unique ID is generated every time the page is loaded, even if it is the same user reloading the page. 
    attr_accessor :fingerprint_session_id

    # Email address set in the customer’s browser, which may differ from customer email. 
    attr_accessor :http_browser_email

    # Customer’s browser as identified from the HTTP header data. For example, `Mozilla` is the value that identifies the Netscape browser. 
    attr_accessor :user_agent

    attr_accessor :raw_data

    # Value of the Accept header sent by the customer’s web browser. **Note** If the customer’s browser provides a value, you must include it in your request. 
    attr_accessor :http_accept_browser_value

    # The exact content of the HTTP accept header. 
    attr_accessor :http_accept_content

    # Value represents the browser language as defined in IETF BCP47. Example:en-US, refer  https://en.wikipedia.org/wiki/IETF_language_tag for more details. 
    attr_accessor :http_browser_language

    # A Boolean value that represents the ability of the cardholder browser to execute Java. Value is returned from the navigator.javaEnabled property. Possible Values:True/False 
    attr_accessor :http_browser_java_enabled

    # A Boolean value that represents the ability of the cardholder browser to execute JavaScript. Possible Values:True/False. **Note**: Merchants should be able to know the values from fingerprint details of cardholder's browser. 
    attr_accessor :http_browser_java_script_enabled

    # Value represents the bit depth of the color palette for displaying images, in bits per pixel. Example : 24, refer https://en.wikipedia.org/wiki/Color_depth for more details 
    attr_accessor :http_browser_color_depth

    # Total height of the Cardholder's scree in pixels, example: 864. 
    attr_accessor :http_browser_screen_height

    # Total width of the cardholder's screen in pixels. Example: 1536. 
    attr_accessor :http_browser_screen_width

    # Time difference between UTC time and the cardholder browser local time, in minutes, Example:300 
    attr_accessor :http_browser_time_difference

    # Value of the User-Agent header sent by the customer’s web browser. Note If the customer’s browser provides a value, you must include it in your request. 
    attr_accessor :user_agent_browser_value

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cookies_accepted' => :'cookiesAccepted',
        :'ip_address' => :'ipAddress',
        :'host_name' => :'hostName',
        :'fingerprint_session_id' => :'fingerprintSessionId',
        :'http_browser_email' => :'httpBrowserEmail',
        :'user_agent' => :'userAgent',
        :'raw_data' => :'rawData',
        :'http_accept_browser_value' => :'httpAcceptBrowserValue',
        :'http_accept_content' => :'httpAcceptContent',
        :'http_browser_language' => :'httpBrowserLanguage',
        :'http_browser_java_enabled' => :'httpBrowserJavaEnabled',
        :'http_browser_java_script_enabled' => :'httpBrowserJavaScriptEnabled',
        :'http_browser_color_depth' => :'httpBrowserColorDepth',
        :'http_browser_screen_height' => :'httpBrowserScreenHeight',
        :'http_browser_screen_width' => :'httpBrowserScreenWidth',
        :'http_browser_time_difference' => :'httpBrowserTimeDifference',
        :'user_agent_browser_value' => :'userAgentBrowserValue'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'cookies_accepted' => :'String',
        :'ip_address' => :'String',
        :'host_name' => :'String',
        :'fingerprint_session_id' => :'String',
        :'http_browser_email' => :'String',
        :'user_agent' => :'String',
        :'raw_data' => :'Array<Ptsv2paymentsDeviceInformationRawData>',
        :'http_accept_browser_value' => :'String',
        :'http_accept_content' => :'String',
        :'http_browser_language' => :'String',
        :'http_browser_java_enabled' => :'BOOLEAN',
        :'http_browser_java_script_enabled' => :'BOOLEAN',
        :'http_browser_color_depth' => :'String',
        :'http_browser_screen_height' => :'String',
        :'http_browser_screen_width' => :'String',
        :'http_browser_time_difference' => :'String',
        :'user_agent_browser_value' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'cookiesAccepted')
        self.cookies_accepted = attributes[:'cookiesAccepted']
      end

      if attributes.has_key?(:'ipAddress')
        self.ip_address = attributes[:'ipAddress']
      end

      if attributes.has_key?(:'hostName')
        self.host_name = attributes[:'hostName']
      end

      if attributes.has_key?(:'fingerprintSessionId')
        self.fingerprint_session_id = attributes[:'fingerprintSessionId']
      end

      if attributes.has_key?(:'httpBrowserEmail')
        self.http_browser_email = attributes[:'httpBrowserEmail']
      end

      if attributes.has_key?(:'userAgent')
        self.user_agent = attributes[:'userAgent']
      end

      if attributes.has_key?(:'rawData')
        if (value = attributes[:'rawData']).is_a?(Array)
          self.raw_data = value
        end
      end

      if attributes.has_key?(:'httpAcceptBrowserValue')
        self.http_accept_browser_value = attributes[:'httpAcceptBrowserValue']
      end

      if attributes.has_key?(:'httpAcceptContent')
        self.http_accept_content = attributes[:'httpAcceptContent']
      end

      if attributes.has_key?(:'httpBrowserLanguage')
        self.http_browser_language = attributes[:'httpBrowserLanguage']
      end

      if attributes.has_key?(:'httpBrowserJavaEnabled')
        self.http_browser_java_enabled = attributes[:'httpBrowserJavaEnabled']
      end

      if attributes.has_key?(:'httpBrowserJavaScriptEnabled')
        self.http_browser_java_script_enabled = attributes[:'httpBrowserJavaScriptEnabled']
      end

      if attributes.has_key?(:'httpBrowserColorDepth')
        self.http_browser_color_depth = attributes[:'httpBrowserColorDepth']
      end

      if attributes.has_key?(:'httpBrowserScreenHeight')
        self.http_browser_screen_height = attributes[:'httpBrowserScreenHeight']
      end

      if attributes.has_key?(:'httpBrowserScreenWidth')
        self.http_browser_screen_width = attributes[:'httpBrowserScreenWidth']
      end

      if attributes.has_key?(:'httpBrowserTimeDifference')
        self.http_browser_time_difference = attributes[:'httpBrowserTimeDifference']
      end

      if attributes.has_key?(:'userAgentBrowserValue')
        self.user_agent_browser_value = attributes[:'userAgentBrowserValue']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@ip_address.nil? && @ip_address.to_s.length > 45
        invalid_properties.push('invalid value for "ip_address", the character length must be smaller than or equal to 45.')
      end

      if !@host_name.nil? && @host_name.to_s.length > 60
        invalid_properties.push('invalid value for "host_name", the character length must be smaller than or equal to 60.')
      end

      if !@user_agent.nil? && @user_agent.to_s.length > 40
        invalid_properties.push('invalid value for "user_agent", the character length must be smaller than or equal to 40.')
      end

      if !@http_accept_browser_value.nil? && @http_accept_browser_value.to_s.length > 255
        invalid_properties.push('invalid value for "http_accept_browser_value", the character length must be smaller than or equal to 255.')
      end

      if !@http_accept_content.nil? && @http_accept_content.to_s.length > 256
        invalid_properties.push('invalid value for "http_accept_content", the character length must be smaller than or equal to 256.')
      end

      if !@http_browser_language.nil? && @http_browser_language.to_s.length > 8
        invalid_properties.push('invalid value for "http_browser_language", the character length must be smaller than or equal to 8.')
      end

      if !@http_browser_color_depth.nil? && @http_browser_color_depth.to_s.length > 2
        invalid_properties.push('invalid value for "http_browser_color_depth", the character length must be smaller than or equal to 2.')
      end

      if !@http_browser_screen_height.nil? && @http_browser_screen_height.to_s.length > 6
        invalid_properties.push('invalid value for "http_browser_screen_height", the character length must be smaller than or equal to 6.')
      end

      if !@http_browser_screen_width.nil? && @http_browser_screen_width.to_s.length > 6
        invalid_properties.push('invalid value for "http_browser_screen_width", the character length must be smaller than or equal to 6.')
      end

      if !@http_browser_time_difference.nil? && @http_browser_time_difference.to_s.length > 5
        invalid_properties.push('invalid value for "http_browser_time_difference", the character length must be smaller than or equal to 5.')
      end

      if !@user_agent_browser_value.nil? && @user_agent_browser_value.to_s.length > 255
        invalid_properties.push('invalid value for "user_agent_browser_value", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@ip_address.nil? && @ip_address.to_s.length > 45
      return false if !@host_name.nil? && @host_name.to_s.length > 60
      return false if !@user_agent.nil? && @user_agent.to_s.length > 40
      return false if !@http_accept_browser_value.nil? && @http_accept_browser_value.to_s.length > 255
      return false if !@http_accept_content.nil? && @http_accept_content.to_s.length > 256
      return false if !@http_browser_language.nil? && @http_browser_language.to_s.length > 8
      return false if !@http_browser_color_depth.nil? && @http_browser_color_depth.to_s.length > 2
      return false if !@http_browser_screen_height.nil? && @http_browser_screen_height.to_s.length > 6
      return false if !@http_browser_screen_width.nil? && @http_browser_screen_width.to_s.length > 6
      return false if !@http_browser_time_difference.nil? && @http_browser_time_difference.to_s.length > 5
      return false if !@user_agent_browser_value.nil? && @user_agent_browser_value.to_s.length > 255
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] ip_address Value to be assigned
    def ip_address=(ip_address)
      if !ip_address.nil? && ip_address.to_s.length > 45
        fail ArgumentError, 'invalid value for "ip_address", the character length must be smaller than or equal to 45.'
      end

      @ip_address = ip_address
    end

    # Custom attribute writer method with validation
    # @param [Object] host_name Value to be assigned
    def host_name=(host_name)
      if !host_name.nil? && host_name.to_s.length > 60
        fail ArgumentError, 'invalid value for "host_name", the character length must be smaller than or equal to 60.'
      end

      @host_name = host_name
    end

    # Custom attribute writer method with validation
    # @param [Object] user_agent Value to be assigned
    def user_agent=(user_agent)
      if !user_agent.nil? && user_agent.to_s.length > 40
        fail ArgumentError, 'invalid value for "user_agent", the character length must be smaller than or equal to 40.'
      end

      @user_agent = user_agent
    end

    # Custom attribute writer method with validation
    # @param [Object] http_accept_browser_value Value to be assigned
    def http_accept_browser_value=(http_accept_browser_value)
      if !http_accept_browser_value.nil? && http_accept_browser_value.to_s.length > 255
        fail ArgumentError, 'invalid value for "http_accept_browser_value", the character length must be smaller than or equal to 255.'
      end

      @http_accept_browser_value = http_accept_browser_value
    end

    # Custom attribute writer method with validation
    # @param [Object] http_accept_content Value to be assigned
    def http_accept_content=(http_accept_content)
      if !http_accept_content.nil? && http_accept_content.to_s.length > 256
        fail ArgumentError, 'invalid value for "http_accept_content", the character length must be smaller than or equal to 256.'
      end

      @http_accept_content = http_accept_content
    end

    # Custom attribute writer method with validation
    # @param [Object] http_browser_language Value to be assigned
    def http_browser_language=(http_browser_language)
      if !http_browser_language.nil? && http_browser_language.to_s.length > 8
        fail ArgumentError, 'invalid value for "http_browser_language", the character length must be smaller than or equal to 8.'
      end

      @http_browser_language = http_browser_language
    end

    # Custom attribute writer method with validation
    # @param [Object] http_browser_color_depth Value to be assigned
    def http_browser_color_depth=(http_browser_color_depth)
      if !http_browser_color_depth.nil? && http_browser_color_depth.to_s.length > 2
        fail ArgumentError, 'invalid value for "http_browser_color_depth", the character length must be smaller than or equal to 2.'
      end

      @http_browser_color_depth = http_browser_color_depth
    end

    # Custom attribute writer method with validation
    # @param [Object] http_browser_screen_height Value to be assigned
    def http_browser_screen_height=(http_browser_screen_height)
      if !http_browser_screen_height.nil? && http_browser_screen_height.to_s.length > 6
        fail ArgumentError, 'invalid value for "http_browser_screen_height", the character length must be smaller than or equal to 6.'
      end

      @http_browser_screen_height = http_browser_screen_height
    end

    # Custom attribute writer method with validation
    # @param [Object] http_browser_screen_width Value to be assigned
    def http_browser_screen_width=(http_browser_screen_width)
      if !http_browser_screen_width.nil? && http_browser_screen_width.to_s.length > 6
        fail ArgumentError, 'invalid value for "http_browser_screen_width", the character length must be smaller than or equal to 6.'
      end

      @http_browser_screen_width = http_browser_screen_width
    end

    # Custom attribute writer method with validation
    # @param [Object] http_browser_time_difference Value to be assigned
    def http_browser_time_difference=(http_browser_time_difference)
      if !http_browser_time_difference.nil? && http_browser_time_difference.to_s.length > 5
        fail ArgumentError, 'invalid value for "http_browser_time_difference", the character length must be smaller than or equal to 5.'
      end

      @http_browser_time_difference = http_browser_time_difference
    end

    # Custom attribute writer method with validation
    # @param [Object] user_agent_browser_value Value to be assigned
    def user_agent_browser_value=(user_agent_browser_value)
      if !user_agent_browser_value.nil? && user_agent_browser_value.to_s.length > 255
        fail ArgumentError, 'invalid value for "user_agent_browser_value", the character length must be smaller than or equal to 255.'
      end

      @user_agent_browser_value = user_agent_browser_value
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cookies_accepted == o.cookies_accepted &&
          ip_address == o.ip_address &&
          host_name == o.host_name &&
          fingerprint_session_id == o.fingerprint_session_id &&
          http_browser_email == o.http_browser_email &&
          user_agent == o.user_agent &&
          raw_data == o.raw_data &&
          http_accept_browser_value == o.http_accept_browser_value &&
          http_accept_content == o.http_accept_content &&
          http_browser_language == o.http_browser_language &&
          http_browser_java_enabled == o.http_browser_java_enabled &&
          http_browser_java_script_enabled == o.http_browser_java_script_enabled &&
          http_browser_color_depth == o.http_browser_color_depth &&
          http_browser_screen_height == o.http_browser_screen_height &&
          http_browser_screen_width == o.http_browser_screen_width &&
          http_browser_time_difference == o.http_browser_time_difference &&
          user_agent_browser_value == o.user_agent_browser_value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cookies_accepted, ip_address, host_name, fingerprint_session_id, http_browser_email, user_agent, raw_data, http_accept_browser_value, http_accept_content, http_browser_language, http_browser_java_enabled, http_browser_java_script_enabled, http_browser_color_depth, http_browser_screen_height, http_browser_screen_width, http_browser_time_difference, user_agent_browser_value].hash
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
