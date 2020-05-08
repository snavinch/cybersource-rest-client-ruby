=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class TssV2TransactionsGet200ResponsePaymentInformationCard
    # Last four digits of the cardholder’s account number. This field is included in the reply message when the client software that is installed on the POS terminal uses the token management service (TMS) to retrieve tokenized payment details.  You must contact customer support to have your account enabled to receive these fields in the credit reply message.  This field is supported only by the following processors: - American Express Direct - Credit Mutuel-CIC - FDC Nashville Global - OmniPay Direct - SIX 
    attr_accessor :suffix

    # Bank Identification Number (BIN). This is the initial four to six numbers on a credit card account number. 
    attr_accessor :prefix

    # Two-digit month in which the payment card expires.  Format: `MM`.  Valid values: `01` through `12`. Leading 0 is required.  #### Barclays and Streamline For Maestro (UK Domestic) and Maestro (International) cards on Barclays and Streamline, this must be a valid value (`01` through `12`) but is not required to be a valid expiration date. In other words, an expiration date that is in the past does not cause CyberSource to reject your request. However, an invalid expiration date might cause the issuer to reject your request.  #### Encoded Account Numbers For encoded account numbers (_type_=039), if there is no expiration date on the card, use `12`.  #### FDMS Nashville Required field.  #### GPX Required if `pointOfSaleInformation.entryMode=keyed`. However, this field is optional if your account is configured for relaxed requirements for address data and expiration date. **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  #### All other processors Required if `pointOfSaleInformation.entryMode=keyed`. However, this field is optional if your account is configured for relaxed requirements for address data and expiration date. **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting. 
    attr_accessor :expiration_month

    # Four-digit year in which the payment card expires.  Format: `YYYY`.  #### Barclays and Streamline For Maestro (UK Domestic) and Maestro (International) cards on Barclays and Streamline, this must be a valid value (`1900` through `3000`) but is not required to be a valid expiration date. In other words, an expiration date that is in the past does not cause CyberSource to reject your request. However, an invalid expiration date might cause the issuer to reject your request.  #### Encoded Account Numbers For encoded account numbers (**_type_**`=039`), if there is no expiration date on the card, use `2021`.  #### FDMS Nashville Required field.  #### FDC Nashville Global and FDMS South You can send in 2 digits or 4 digits. If you send in 2 digits, they must be the last 2 digits of the year.  #### GPX Required if `pointOfSaleInformation.entryMode=keyed`. However, this field is optional if your account is configured for relaxed requirements for address data and expiration date. **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  #### All other processors Required if `pointOfSaleInformation.entryMode=keyed`. However, this field is optional if your account is configured for relaxed requirements for address data and expiration date. **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting. 
    attr_accessor :expiration_year

    # Month of the start of the Maestro (UK Domestic) card validity period. Do not include the field, even with a blank value, if the card is not a Maestro (UK Domestic) card. `Format: MM`. Possible values: 01 through 12.  **Note** The start date is not required for Maestro (UK Domestic) transactions. 
    attr_accessor :start_month

    # Year of the start of the Maestro (UK Domestic) card validity period. Do not include the field, even with a blank value, if the card is not a Maestro (UK Domestic) card. `Format: YYYY`.  **Note** The start date is not required for Maestro (UK Domestic) transactions. 
    attr_accessor :start_year

    # Number of times a Maestro (UK Domestic) card has been issued to the account holder. The card might or might not have an issue number. The number can consist of one or two digits, and the first digit might be a zero. When you include this value in your request, include exactly what is printed on the card. A value of 2 is different than a value of 02. Do not include the field, even with a blank value, if the card is not a Maestro (UK Domestic) card.  **Note** The issue number is not required for Maestro (UK Domestic) transactions. 
    attr_accessor :issue_number

    # Three-digit value that indicates the card type.  **IMPORTANT** It is strongly recommended that you include the card type field in request messages even if it is optional for your processor and card type. Omitting the card type can cause the transaction to be processed with the wrong card type.  Possible values: - `001`: Visa. For card-present transactions on all processors except SIX, the Visa Electron card type is processed the same way that the Visa debit card is processed. Use card type value `001` for Visa Electron. - `002`: Mastercard, Eurocard[^1], which is a European regional brand of Mastercard. - `003`: American Express - `004`: Discover - `005`: Diners Club - `006`: Carte Blanche[^1] - `007`: JCB[^1] - `014`: Enroute[^1] - `021`: JAL[^1] - `024`: Maestro (UK Domestic)[^1] - `031`: Delta[^1]: Use this value only for Ingenico ePayments. For other processors, use `001` for all Visa card types. - `033`: Visa Electron[^1]. Use this value only for Ingenico ePayments and SIX. For other processors, use `001` for all Visa card types. - `034`: Dankort[^1] - `036`: Cartes Bancaires[^1] - `037`: Carta Si[^1] - `039`: Encoded account number[^1] - `040`: UATP[^1] - `042`: Maestro (International)[^1] - `050`: Hipercard[^2,3] - `051`: Aura - `054`: Elo[^3] - `062`: China UnionPay  [^1]: For this card type, you must include the `paymentInformation.card.type` or `paymentInformation.tokenizedCard.type` field in your request for an authorization or a stand-alone credit. [^2]: For this card type on Cielo 3.0, you must include the `paymentInformation.card.type` or `paymentInformation.tokenizedCard.type` field in a request for an authorization or a stand-alone credit. This card type is not supported on Cielo 1.5. [^3]: For this card type on Getnet and Rede, you must include the `paymentInformation.card.type` or `paymentInformation.tokenizedCard.type` field in a request for an authorization or a stand-alone credit.  #### Used by **Authorization** Required for Carte Blanche and JCB. Optional for all other card types.  #### Card Present reply This field is included in the reply message when the client software that is installed on the POS terminal uses the token management service (TMS) to retrieve tokenized payment details. You must contact customer support to have your account enabled to receive these fields in the credit reply message.  Returned by the Credit service.  This reply field is only supported by the following processors: - American Express Direct - Credit Mutuel-CIC - FDC Nashville Global - OmniPay Direct - SIX  #### GPX This field only supports transactions from the following card types: - Visa - Mastercard - AMEX - Discover - Diners - JCB - Union Pay International 
    attr_accessor :type

    # Identifier for the issuing bank that provided the customer’s encoded account number. Contact your processor for the bank’s ID. 
    attr_accessor :account_encoder_id

    # Flag that specifies the type of account associated with the card. The cardholder provides this information during the payment process.  #### Cielo and Comercio Latino  Possible values:   - CREDIT: Credit card  - DEBIT: Debit card  This field is required for:  - Debit transactions on Cielo and Comercio Latino.  - Transactions with Brazilian-issued cards on CyberSource through VisaNet.  **Note** The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP07 TCR0 - Position: 51 - Field: Combination Card Transaction Identifier  This field is supported only for Mastercard transactions in Brazil on CyberSource through VisaNet. 
    attr_accessor :use_as

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'suffix' => :'suffix',
        :'prefix' => :'prefix',
        :'expiration_month' => :'expirationMonth',
        :'expiration_year' => :'expirationYear',
        :'start_month' => :'startMonth',
        :'start_year' => :'startYear',
        :'issue_number' => :'issueNumber',
        :'type' => :'type',
        :'account_encoder_id' => :'accountEncoderId',
        :'use_as' => :'useAs'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'suffix' => :'String',
        :'prefix' => :'String',
        :'expiration_month' => :'String',
        :'expiration_year' => :'String',
        :'start_month' => :'String',
        :'start_year' => :'String',
        :'issue_number' => :'String',
        :'type' => :'String',
        :'account_encoder_id' => :'String',
        :'use_as' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'suffix')
        self.suffix = attributes[:'suffix']
      end

      if attributes.has_key?(:'prefix')
        self.prefix = attributes[:'prefix']
      end

      if attributes.has_key?(:'expirationMonth')
        self.expiration_month = attributes[:'expirationMonth']
      end

      if attributes.has_key?(:'expirationYear')
        self.expiration_year = attributes[:'expirationYear']
      end

      if attributes.has_key?(:'startMonth')
        self.start_month = attributes[:'startMonth']
      end

      if attributes.has_key?(:'startYear')
        self.start_year = attributes[:'startYear']
      end

      if attributes.has_key?(:'issueNumber')
        self.issue_number = attributes[:'issueNumber']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'accountEncoderId')
        self.account_encoder_id = attributes[:'accountEncoderId']
      end

      if attributes.has_key?(:'useAs')
        self.use_as = attributes[:'useAs']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@prefix.nil? && @prefix.to_s.length > 6
        invalid_properties.push('invalid value for "prefix", the character length must be smaller than or equal to 6.')
      end

      if !@expiration_month.nil? && @expiration_month.to_s.length > 2
        invalid_properties.push('invalid value for "expiration_month", the character length must be smaller than or equal to 2.')
      end

      if !@expiration_year.nil? && @expiration_year.to_s.length > 4
        invalid_properties.push('invalid value for "expiration_year", the character length must be smaller than or equal to 4.')
      end

      if !@start_month.nil? && @start_month.to_s.length > 2
        invalid_properties.push('invalid value for "start_month", the character length must be smaller than or equal to 2.')
      end

      if !@start_year.nil? && @start_year.to_s.length > 4
        invalid_properties.push('invalid value for "start_year", the character length must be smaller than or equal to 4.')
      end

      if !@issue_number.nil? && @issue_number.to_s.length > 5
        invalid_properties.push('invalid value for "issue_number", the character length must be smaller than or equal to 5.')
      end

      if !@account_encoder_id.nil? && @account_encoder_id.to_s.length > 3
        invalid_properties.push('invalid value for "account_encoder_id", the character length must be smaller than or equal to 3.')
      end

      if !@use_as.nil? && @use_as.to_s.length > 20
        invalid_properties.push('invalid value for "use_as", the character length must be smaller than or equal to 20.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@prefix.nil? && @prefix.to_s.length > 6
      return false if !@expiration_month.nil? && @expiration_month.to_s.length > 2
      return false if !@expiration_year.nil? && @expiration_year.to_s.length > 4
      return false if !@start_month.nil? && @start_month.to_s.length > 2
      return false if !@start_year.nil? && @start_year.to_s.length > 4
      return false if !@issue_number.nil? && @issue_number.to_s.length > 5
      return false if !@account_encoder_id.nil? && @account_encoder_id.to_s.length > 3
      return false if !@use_as.nil? && @use_as.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] prefix Value to be assigned
    def prefix=(prefix)
      if !prefix.nil? && prefix.to_s.length > 6
        fail ArgumentError, 'invalid value for "prefix", the character length must be smaller than or equal to 6.'
      end

      @prefix = prefix
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_month Value to be assigned
    def expiration_month=(expiration_month)
      if !expiration_month.nil? && expiration_month.to_s.length > 2
        fail ArgumentError, 'invalid value for "expiration_month", the character length must be smaller than or equal to 2.'
      end

      @expiration_month = expiration_month
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_year Value to be assigned
    def expiration_year=(expiration_year)
      if !expiration_year.nil? && expiration_year.to_s.length > 4
        fail ArgumentError, 'invalid value for "expiration_year", the character length must be smaller than or equal to 4.'
      end

      @expiration_year = expiration_year
    end

    # Custom attribute writer method with validation
    # @param [Object] start_month Value to be assigned
    def start_month=(start_month)
      if !start_month.nil? && start_month.to_s.length > 2
        fail ArgumentError, 'invalid value for "start_month", the character length must be smaller than or equal to 2.'
      end

      @start_month = start_month
    end

    # Custom attribute writer method with validation
    # @param [Object] start_year Value to be assigned
    def start_year=(start_year)
      if !start_year.nil? && start_year.to_s.length > 4
        fail ArgumentError, 'invalid value for "start_year", the character length must be smaller than or equal to 4.'
      end

      @start_year = start_year
    end

    # Custom attribute writer method with validation
    # @param [Object] issue_number Value to be assigned
    def issue_number=(issue_number)
      if !issue_number.nil? && issue_number.to_s.length > 5
        fail ArgumentError, 'invalid value for "issue_number", the character length must be smaller than or equal to 5.'
      end

      @issue_number = issue_number
    end

    # Custom attribute writer method with validation
    # @param [Object] account_encoder_id Value to be assigned
    def account_encoder_id=(account_encoder_id)
      if !account_encoder_id.nil? && account_encoder_id.to_s.length > 3
        fail ArgumentError, 'invalid value for "account_encoder_id", the character length must be smaller than or equal to 3.'
      end

      @account_encoder_id = account_encoder_id
    end

    # Custom attribute writer method with validation
    # @param [Object] use_as Value to be assigned
    def use_as=(use_as)
      if !use_as.nil? && use_as.to_s.length > 20
        fail ArgumentError, 'invalid value for "use_as", the character length must be smaller than or equal to 20.'
      end

      @use_as = use_as
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          suffix == o.suffix &&
          prefix == o.prefix &&
          expiration_month == o.expiration_month &&
          expiration_year == o.expiration_year &&
          start_month == o.start_month &&
          start_year == o.start_year &&
          issue_number == o.issue_number &&
          type == o.type &&
          account_encoder_id == o.account_encoder_id &&
          use_as == o.use_as
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [suffix, prefix, expiration_month, expiration_year, start_month, start_year, issue_number, type, account_encoder_id, use_as].hash
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
