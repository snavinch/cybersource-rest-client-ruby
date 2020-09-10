=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class PtsV2PaymentsPost201ResponseProcessorInformation
    # Flag that specifies the purpose of the authorization.  Possible values:  - `0`: Preauthorization  - `1`: Final authorization 
    attr_accessor :auth_indicator

    # Authorization code. Returned only when the processor returns this value.  The length of this value depends on your processor.  Returned by authorization service.  #### PIN debit Authorization code that is returned by the processor.  Returned by PIN debit credit.  #### Elavon Encrypted Account Number Program The returned value is OFFLINE.  #### TSYS Acquiring Solutions The returned value for a successful zero amount authorization is 000000. 
    attr_accessor :approval_code

    # Network transaction identifier (TID). You can use this value to identify a specific transaction when you are discussing the transaction with your processor. Not all processors provide this value.  Returned by the authorization service.  #### PIN debit Transaction identifier generated by the processor.  Returned by PIN debit credit.  #### GPX Processor transaction ID.  #### Cielo For Cielo, this value is the non-sequential unit (NSU) and is supported for all transactions. The value is generated by Cielo or the issuing bank.  #### Comercio Latino For Comercio Latino, this value is the proof of sale or non-sequential unit (NSU) number generated by the acquirers Cielo and Rede, or the issuing bank.  #### CyberSource through VisaNet and GPN For details about this value for CyberSource through VisaNet and GPN, see \"Network Transaction Identifiers\" in [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  #### Moneris This value identifies the transaction on a host system. It contains the following information: - Terminal used to process the transaction - Shift during which the transaction took place - Batch number - Transaction number within the batch You must store this value. If you give the customer a receipt, display this value on the receipt.  **Example** For the value 66012345001069003: - Terminal ID = 66012345 - Shift number = 001 - Batch number = 069 - Transaction number = 003 
    attr_accessor :transaction_id

    # The description for this field is not available.
    attr_accessor :network_transaction_id

    # The description for this field is not available.
    attr_accessor :provider_transaction_id

    # For most processors, this is the error message sent directly from the bank. Returned only when the processor returns this value.  **Important** Do not use this field to evaluate the result of the authorization.  #### PIN debit Response value that is returned by the processor or bank. **Important** Do not use this field to evaluate the results of the transaction request.  Returned by PIN debit credit, PIN debit purchase, and PIN debit reversal.  #### AIBMS If this value is `08`, you can accept the transaction if the customer provides you with identification.  #### Atos This value is the response code sent from Atos and it might also include the response code from the bank. Format: `aa,bb` with the two values separated by a comma and where: - `aa` is the two-digit error message from Atos. - `bb` is the optional two-digit error message from the bank.  #### Comercio Latino This value is the status code and the error or response code received from the processor separated by a colon. Format: [status code]:E[error code] or [status code]:R[response code] Example `2:R06`  #### JCN Gateway Processor-defined detail error code. The associated response category code is in the `processorInformation.responseCategoryCode` field. String (3) 
    attr_accessor :response_code

    # Used by Visa only and contains the response source/reason code that identifies the source of the response decision. 
    attr_accessor :response_code_source

    # This field might contain information about a decline. This field is supported only for **CyberSource through VisaNet**. 
    attr_accessor :response_details

    # Processor-defined response category code. The associated detail error code is in the `processorInformation.responseCode` or `issuerInformation.responseCode` field of the service you requested.  This field is supported only for:   - Japanese issuers  - Domestic transactions in Japan  - Comercio Latino—processor transaction ID required for troubleshooting  #### Maximum length for processors   - Comercio Latino: 36  - All other processors: 3 
    attr_accessor :response_category_code

    # Name of the Japanese acquirer that processed the transaction. Returned only for JCN Gateway. Please contact the CyberSource Japan Support Group for more information. 
    attr_accessor :forwarded_acquirer_code

    attr_accessor :avs

    attr_accessor :card_verification

    attr_accessor :merchant_advice

    attr_accessor :electronic_verification_results

    attr_accessor :ach_verification

    attr_accessor :customer

    attr_accessor :consumer_authentication_response

    # This field is returned only for **American Express Direct** and **CyberSource through VisaNet**. Returned by authorization and incremental authorization services.  #### American Express Direct  System trace audit number (STAN). This value identifies the transaction and is useful when investigating a chargeback dispute.  #### CyberSource through VisaNet  System trace number that must be printed on the customer’s receipt. 
    attr_accessor :system_trace_audit_number

    # Visa-generated reference number that identifies a card-present transaction for which you provided one of the following:   - Visa primary account number (PAN)  - Visa-generated token for a PAN  This reference number serves as a link to the cardholder account and to all transactions for that account. This reply field is returned only for CyberSource through VisaNet.  **Note** On CyberSource through VisaNet, the value for this field corresponds to the following data in the TC 33 capture file: - Record: CP01 TCR8 - Position: 79-110 - Field: Payment Account Reference  The TC 33 Capture file contains information about the purchases and refunds that a merchant submits to CyberSource. CyberSource through VisaNet creates the TC 33 Capture file at the end of the day and sends it to the merchant’s acquirer, who uses this information to facilitate end-of-day clearing processing with payment networks. 
    attr_accessor :payment_account_reference_number

    # Transaction integrity classification provided by Mastercard. This value specifies Mastercard’s evaluation of the transaction’s safety and security. This field is returned only for **CyberSource through VisaNet**.  For card-present transactions, possible values:   - `A1`: EMV or token in a secure, trusted environment  - `B1`: EMV or chip equivalent  - `C1`: Magnetic stripe  - `E1`: Key entered  - `U0`: Unclassified  For card-not-present transactions, possible values:   - `A2`: Digital transactions  - `B2`: Authenticated checkout  - `C2`: Transaction validation  - `D2`: Enhanced data  - `E2`: Generic messaging  - `U0`: Unclassified  For information about these values, contact Mastercard or your acquirer.  #### CyberSource through VisaNet  The value for this field corresponds to the following data in the TC 33 capture file,<sup>1</sup>: - Record: CP01 TCR6 - Position: 136-137 - Field: Mastercard Transaction Integrity Classification  <sup>1</sup> The TC 33 Capture file contains information about the purchases and refunds that a merchant submits to CyberSource. CyberSource through VisaNet creates the TC 33 Capture file at the end of the day and sends it to the merchant’s acquirer, who uses this information to facilitate end-of-day clearing processing with payment networks. 
    attr_accessor :transaction_integrity_code

    # Referral response number for a verbal authorization with FDMS Nashville when using an American Express card. Give this number to American Express when you call them for the verbal authorization. 
    attr_accessor :amex_verbal_auth_reference_number

    # Mastercard service that was used for the transaction. Mastercard provides this value to CyberSource.  Possible value:  - 53: Mastercard card-on-file token service  #### CyberSource through VisaNet The value for this field corresponds to the following data in the TC 33 capture file: - Record: CP01 TCR6 - Position: 133-134 - Field: Mastercard Merchant on-behalf service. **Note** This field is returned only for CyberSource through VisaNet. 
    attr_accessor :master_card_service_code

    # Result of the Mastercard card-on-file token service. Mastercard provides this value to CyberSource.  Possible values:   - `C`: Service completed successfully.  - `F`: One of the following:    - Incorrect Mastercard POS entry mode. The Mastercard POS entry mode should be 81 for an authorization or      authorization reversal.    - Incorrect Mastercard POS entry mode. The Mastercard POS entry mode should be 01 for a tokenized request.    - Token requestor ID is missing or formatted incorrectly.  - `I`: One of the following:    - Invalid token requestor ID.    - Suspended or deactivated token.    - Invalid token (not in mapping table).  - `T`: Invalid combination of token requestor ID and token.  - `U`: Expired token.  - `W`: Primary account number (PAN) listed in electronic warning bulletin.  **Note** This field is returned only for **CyberSource through VisaNet**. 
    attr_accessor :master_card_service_reply_code

    # Type of authentication for which the transaction qualifies as determined by the Mastercard authentication service, which confirms the identity of the cardholder. Mastercard provides this value to CyberSource.  Possible values:   - `1`: Transaction qualifies for Mastercard authentication type 1.  - `2`: Transaction qualifies for Mastercard authentication type 2.  #### CyberSource through VisaNet The value for this field corresponds to the following data in the TC 33 capture file: - Record: CP01 TCR6 - Position: 132 - Field: Mastercard Member Defined service. **Note** This field is returned only for CyberSource through VisaNet. 
    attr_accessor :master_card_authentication_type

    # Name of the Processor. 
    attr_accessor :name

    attr_accessor :routing

    # Identifier that was assigned to you by your acquirer. This value must be printed on the receipt.  #### Returned by Authorizations and Credits.  This reply field is only supported by merchants who have installed client software on their POS terminals and use these processors: - American Express Direct - Credit Mutuel-CIC - FDC Nashville Global - OmniPay Direct - SIX 
    attr_accessor :merchant_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auth_indicator' => :'authIndicator',
        :'approval_code' => :'approvalCode',
        :'transaction_id' => :'transactionId',
        :'network_transaction_id' => :'networkTransactionId',
        :'provider_transaction_id' => :'providerTransactionId',
        :'response_code' => :'responseCode',
        :'response_code_source' => :'responseCodeSource',
        :'response_details' => :'responseDetails',
        :'response_category_code' => :'responseCategoryCode',
        :'forwarded_acquirer_code' => :'forwardedAcquirerCode',
        :'avs' => :'avs',
        :'card_verification' => :'cardVerification',
        :'merchant_advice' => :'merchantAdvice',
        :'electronic_verification_results' => :'electronicVerificationResults',
        :'ach_verification' => :'achVerification',
        :'customer' => :'customer',
        :'consumer_authentication_response' => :'consumerAuthenticationResponse',
        :'system_trace_audit_number' => :'systemTraceAuditNumber',
        :'payment_account_reference_number' => :'paymentAccountReferenceNumber',
        :'transaction_integrity_code' => :'transactionIntegrityCode',
        :'amex_verbal_auth_reference_number' => :'amexVerbalAuthReferenceNumber',
        :'master_card_service_code' => :'masterCardServiceCode',
        :'master_card_service_reply_code' => :'masterCardServiceReplyCode',
        :'master_card_authentication_type' => :'masterCardAuthenticationType',
        :'name' => :'name',
        :'routing' => :'routing',
        :'merchant_number' => :'merchantNumber'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auth_indicator' => :'String',
        :'approval_code' => :'String',
        :'transaction_id' => :'String',
        :'network_transaction_id' => :'String',
        :'provider_transaction_id' => :'String',
        :'response_code' => :'String',
        :'response_code_source' => :'String',
        :'response_details' => :'String',
        :'response_category_code' => :'String',
        :'forwarded_acquirer_code' => :'String',
        :'avs' => :'PtsV2PaymentsPost201ResponseProcessorInformationAvs',
        :'card_verification' => :'PtsV2PaymentsPost201ResponseProcessorInformationCardVerification',
        :'merchant_advice' => :'PtsV2PaymentsPost201ResponseProcessorInformationMerchantAdvice',
        :'electronic_verification_results' => :'PtsV2PaymentsPost201ResponseProcessorInformationElectronicVerificationResults',
        :'ach_verification' => :'PtsV2PaymentsPost201ResponseProcessorInformationAchVerification',
        :'customer' => :'PtsV2PaymentsPost201ResponseProcessorInformationCustomer',
        :'consumer_authentication_response' => :'PtsV2PaymentsPost201ResponseProcessorInformationConsumerAuthenticationResponse',
        :'system_trace_audit_number' => :'String',
        :'payment_account_reference_number' => :'String',
        :'transaction_integrity_code' => :'String',
        :'amex_verbal_auth_reference_number' => :'String',
        :'master_card_service_code' => :'String',
        :'master_card_service_reply_code' => :'String',
        :'master_card_authentication_type' => :'String',
        :'name' => :'String',
        :'routing' => :'PtsV2PaymentsPost201ResponseProcessorInformationRouting',
        :'merchant_number' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'authIndicator')
        self.auth_indicator = attributes[:'authIndicator']
      end

      if attributes.has_key?(:'approvalCode')
        self.approval_code = attributes[:'approvalCode']
      end

      if attributes.has_key?(:'transactionId')
        self.transaction_id = attributes[:'transactionId']
      end

      if attributes.has_key?(:'networkTransactionId')
        self.network_transaction_id = attributes[:'networkTransactionId']
      end

      if attributes.has_key?(:'providerTransactionId')
        self.provider_transaction_id = attributes[:'providerTransactionId']
      end

      if attributes.has_key?(:'responseCode')
        self.response_code = attributes[:'responseCode']
      end

      if attributes.has_key?(:'responseCodeSource')
        self.response_code_source = attributes[:'responseCodeSource']
      end

      if attributes.has_key?(:'responseDetails')
        self.response_details = attributes[:'responseDetails']
      end

      if attributes.has_key?(:'responseCategoryCode')
        self.response_category_code = attributes[:'responseCategoryCode']
      end

      if attributes.has_key?(:'forwardedAcquirerCode')
        self.forwarded_acquirer_code = attributes[:'forwardedAcquirerCode']
      end

      if attributes.has_key?(:'avs')
        self.avs = attributes[:'avs']
      end

      if attributes.has_key?(:'cardVerification')
        self.card_verification = attributes[:'cardVerification']
      end

      if attributes.has_key?(:'merchantAdvice')
        self.merchant_advice = attributes[:'merchantAdvice']
      end

      if attributes.has_key?(:'electronicVerificationResults')
        self.electronic_verification_results = attributes[:'electronicVerificationResults']
      end

      if attributes.has_key?(:'achVerification')
        self.ach_verification = attributes[:'achVerification']
      end

      if attributes.has_key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.has_key?(:'consumerAuthenticationResponse')
        self.consumer_authentication_response = attributes[:'consumerAuthenticationResponse']
      end

      if attributes.has_key?(:'systemTraceAuditNumber')
        self.system_trace_audit_number = attributes[:'systemTraceAuditNumber']
      end

      if attributes.has_key?(:'paymentAccountReferenceNumber')
        self.payment_account_reference_number = attributes[:'paymentAccountReferenceNumber']
      end

      if attributes.has_key?(:'transactionIntegrityCode')
        self.transaction_integrity_code = attributes[:'transactionIntegrityCode']
      end

      if attributes.has_key?(:'amexVerbalAuthReferenceNumber')
        self.amex_verbal_auth_reference_number = attributes[:'amexVerbalAuthReferenceNumber']
      end

      if attributes.has_key?(:'masterCardServiceCode')
        self.master_card_service_code = attributes[:'masterCardServiceCode']
      end

      if attributes.has_key?(:'masterCardServiceReplyCode')
        self.master_card_service_reply_code = attributes[:'masterCardServiceReplyCode']
      end

      if attributes.has_key?(:'masterCardAuthenticationType')
        self.master_card_authentication_type = attributes[:'masterCardAuthenticationType']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'routing')
        self.routing = attributes[:'routing']
      end

      if attributes.has_key?(:'merchantNumber')
        self.merchant_number = attributes[:'merchantNumber']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@auth_indicator.nil? && @auth_indicator.to_s.length > 1
        invalid_properties.push('invalid value for "auth_indicator", the character length must be smaller than or equal to 1.')
      end

      if !@transaction_id.nil? && @transaction_id.to_s.length > 50
        invalid_properties.push('invalid value for "transaction_id", the character length must be smaller than or equal to 50.')
      end

      if !@response_code.nil? && @response_code.to_s.length > 10
        invalid_properties.push('invalid value for "response_code", the character length must be smaller than or equal to 10.')
      end

      if !@response_code_source.nil? && @response_code_source.to_s.length > 1
        invalid_properties.push('invalid value for "response_code_source", the character length must be smaller than or equal to 1.')
      end

      if !@response_details.nil? && @response_details.to_s.length > 255
        invalid_properties.push('invalid value for "response_details", the character length must be smaller than or equal to 255.')
      end

      if !@response_category_code.nil? && @response_category_code.to_s.length > 36
        invalid_properties.push('invalid value for "response_category_code", the character length must be smaller than or equal to 36.')
      end

      if !@forwarded_acquirer_code.nil? && @forwarded_acquirer_code.to_s.length > 32
        invalid_properties.push('invalid value for "forwarded_acquirer_code", the character length must be smaller than or equal to 32.')
      end

      if !@system_trace_audit_number.nil? && @system_trace_audit_number.to_s.length > 6
        invalid_properties.push('invalid value for "system_trace_audit_number", the character length must be smaller than or equal to 6.')
      end

      if !@payment_account_reference_number.nil? && @payment_account_reference_number.to_s.length > 32
        invalid_properties.push('invalid value for "payment_account_reference_number", the character length must be smaller than or equal to 32.')
      end

      if !@transaction_integrity_code.nil? && @transaction_integrity_code.to_s.length > 2
        invalid_properties.push('invalid value for "transaction_integrity_code", the character length must be smaller than or equal to 2.')
      end

      if !@amex_verbal_auth_reference_number.nil? && @amex_verbal_auth_reference_number.to_s.length > 6
        invalid_properties.push('invalid value for "amex_verbal_auth_reference_number", the character length must be smaller than or equal to 6.')
      end

      if !@master_card_service_code.nil? && @master_card_service_code.to_s.length > 2
        invalid_properties.push('invalid value for "master_card_service_code", the character length must be smaller than or equal to 2.')
      end

      if !@master_card_service_reply_code.nil? && @master_card_service_reply_code.to_s.length > 1
        invalid_properties.push('invalid value for "master_card_service_reply_code", the character length must be smaller than or equal to 1.')
      end

      if !@master_card_authentication_type.nil? && @master_card_authentication_type.to_s.length > 1
        invalid_properties.push('invalid value for "master_card_authentication_type", the character length must be smaller than or equal to 1.')
      end

      if !@name.nil? && @name.to_s.length > 30
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 30.')
      end

      if !@merchant_number.nil? && @merchant_number.to_s.length > 15
        invalid_properties.push('invalid value for "merchant_number", the character length must be smaller than or equal to 15.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@auth_indicator.nil? && @auth_indicator.to_s.length > 1
      return false if !@transaction_id.nil? && @transaction_id.to_s.length > 50
      return false if !@response_code.nil? && @response_code.to_s.length > 10
      return false if !@response_code_source.nil? && @response_code_source.to_s.length > 1
      return false if !@response_details.nil? && @response_details.to_s.length > 255
      return false if !@response_category_code.nil? && @response_category_code.to_s.length > 36
      return false if !@forwarded_acquirer_code.nil? && @forwarded_acquirer_code.to_s.length > 32
      return false if !@system_trace_audit_number.nil? && @system_trace_audit_number.to_s.length > 6
      return false if !@payment_account_reference_number.nil? && @payment_account_reference_number.to_s.length > 32
      return false if !@transaction_integrity_code.nil? && @transaction_integrity_code.to_s.length > 2
      return false if !@amex_verbal_auth_reference_number.nil? && @amex_verbal_auth_reference_number.to_s.length > 6
      return false if !@master_card_service_code.nil? && @master_card_service_code.to_s.length > 2
      return false if !@master_card_service_reply_code.nil? && @master_card_service_reply_code.to_s.length > 1
      return false if !@master_card_authentication_type.nil? && @master_card_authentication_type.to_s.length > 1
      return false if !@name.nil? && @name.to_s.length > 30
      return false if !@merchant_number.nil? && @merchant_number.to_s.length > 15
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] auth_indicator Value to be assigned
    def auth_indicator=(auth_indicator)
      if !auth_indicator.nil? && auth_indicator.to_s.length > 1
        fail ArgumentError, 'invalid value for "auth_indicator", the character length must be smaller than or equal to 1.'
      end

      @auth_indicator = auth_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_id Value to be assigned
    def transaction_id=(transaction_id)
      if !transaction_id.nil? && transaction_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "transaction_id", the character length must be smaller than or equal to 50.'
      end

      @transaction_id = transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] response_code Value to be assigned
    def response_code=(response_code)
      if !response_code.nil? && response_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "response_code", the character length must be smaller than or equal to 10.'
      end

      @response_code = response_code
    end

    # Custom attribute writer method with validation
    # @param [Object] response_code_source Value to be assigned
    def response_code_source=(response_code_source)
      if !response_code_source.nil? && response_code_source.to_s.length > 1
        fail ArgumentError, 'invalid value for "response_code_source", the character length must be smaller than or equal to 1.'
      end

      @response_code_source = response_code_source
    end

    # Custom attribute writer method with validation
    # @param [Object] response_details Value to be assigned
    def response_details=(response_details)
      if !response_details.nil? && response_details.to_s.length > 255
        fail ArgumentError, 'invalid value for "response_details", the character length must be smaller than or equal to 255.'
      end

      @response_details = response_details
    end

    # Custom attribute writer method with validation
    # @param [Object] response_category_code Value to be assigned
    def response_category_code=(response_category_code)
      if !response_category_code.nil? && response_category_code.to_s.length > 36
        fail ArgumentError, 'invalid value for "response_category_code", the character length must be smaller than or equal to 36.'
      end

      @response_category_code = response_category_code
    end

    # Custom attribute writer method with validation
    # @param [Object] forwarded_acquirer_code Value to be assigned
    def forwarded_acquirer_code=(forwarded_acquirer_code)
      if !forwarded_acquirer_code.nil? && forwarded_acquirer_code.to_s.length > 32
        fail ArgumentError, 'invalid value for "forwarded_acquirer_code", the character length must be smaller than or equal to 32.'
      end

      @forwarded_acquirer_code = forwarded_acquirer_code
    end

    # Custom attribute writer method with validation
    # @param [Object] system_trace_audit_number Value to be assigned
    def system_trace_audit_number=(system_trace_audit_number)
      if !system_trace_audit_number.nil? && system_trace_audit_number.to_s.length > 6
        fail ArgumentError, 'invalid value for "system_trace_audit_number", the character length must be smaller than or equal to 6.'
      end

      @system_trace_audit_number = system_trace_audit_number
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_account_reference_number Value to be assigned
    def payment_account_reference_number=(payment_account_reference_number)
      if !payment_account_reference_number.nil? && payment_account_reference_number.to_s.length > 32
        fail ArgumentError, 'invalid value for "payment_account_reference_number", the character length must be smaller than or equal to 32.'
      end

      @payment_account_reference_number = payment_account_reference_number
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_integrity_code Value to be assigned
    def transaction_integrity_code=(transaction_integrity_code)
      if !transaction_integrity_code.nil? && transaction_integrity_code.to_s.length > 2
        fail ArgumentError, 'invalid value for "transaction_integrity_code", the character length must be smaller than or equal to 2.'
      end

      @transaction_integrity_code = transaction_integrity_code
    end

    # Custom attribute writer method with validation
    # @param [Object] amex_verbal_auth_reference_number Value to be assigned
    def amex_verbal_auth_reference_number=(amex_verbal_auth_reference_number)
      if !amex_verbal_auth_reference_number.nil? && amex_verbal_auth_reference_number.to_s.length > 6
        fail ArgumentError, 'invalid value for "amex_verbal_auth_reference_number", the character length must be smaller than or equal to 6.'
      end

      @amex_verbal_auth_reference_number = amex_verbal_auth_reference_number
    end

    # Custom attribute writer method with validation
    # @param [Object] master_card_service_code Value to be assigned
    def master_card_service_code=(master_card_service_code)
      if !master_card_service_code.nil? && master_card_service_code.to_s.length > 2
        fail ArgumentError, 'invalid value for "master_card_service_code", the character length must be smaller than or equal to 2.'
      end

      @master_card_service_code = master_card_service_code
    end

    # Custom attribute writer method with validation
    # @param [Object] master_card_service_reply_code Value to be assigned
    def master_card_service_reply_code=(master_card_service_reply_code)
      if !master_card_service_reply_code.nil? && master_card_service_reply_code.to_s.length > 1
        fail ArgumentError, 'invalid value for "master_card_service_reply_code", the character length must be smaller than or equal to 1.'
      end

      @master_card_service_reply_code = master_card_service_reply_code
    end

    # Custom attribute writer method with validation
    # @param [Object] master_card_authentication_type Value to be assigned
    def master_card_authentication_type=(master_card_authentication_type)
      if !master_card_authentication_type.nil? && master_card_authentication_type.to_s.length > 1
        fail ArgumentError, 'invalid value for "master_card_authentication_type", the character length must be smaller than or equal to 1.'
      end

      @master_card_authentication_type = master_card_authentication_type
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 30
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 30.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_number Value to be assigned
    def merchant_number=(merchant_number)
      if !merchant_number.nil? && merchant_number.to_s.length > 15
        fail ArgumentError, 'invalid value for "merchant_number", the character length must be smaller than or equal to 15.'
      end

      @merchant_number = merchant_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auth_indicator == o.auth_indicator &&
          approval_code == o.approval_code &&
          transaction_id == o.transaction_id &&
          network_transaction_id == o.network_transaction_id &&
          provider_transaction_id == o.provider_transaction_id &&
          response_code == o.response_code &&
          response_code_source == o.response_code_source &&
          response_details == o.response_details &&
          response_category_code == o.response_category_code &&
          forwarded_acquirer_code == o.forwarded_acquirer_code &&
          avs == o.avs &&
          card_verification == o.card_verification &&
          merchant_advice == o.merchant_advice &&
          electronic_verification_results == o.electronic_verification_results &&
          ach_verification == o.ach_verification &&
          customer == o.customer &&
          consumer_authentication_response == o.consumer_authentication_response &&
          system_trace_audit_number == o.system_trace_audit_number &&
          payment_account_reference_number == o.payment_account_reference_number &&
          transaction_integrity_code == o.transaction_integrity_code &&
          amex_verbal_auth_reference_number == o.amex_verbal_auth_reference_number &&
          master_card_service_code == o.master_card_service_code &&
          master_card_service_reply_code == o.master_card_service_reply_code &&
          master_card_authentication_type == o.master_card_authentication_type &&
          name == o.name &&
          routing == o.routing &&
          merchant_number == o.merchant_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [auth_indicator, approval_code, transaction_id, network_transaction_id, provider_transaction_id, response_code, response_code_source, response_details, response_category_code, forwarded_acquirer_code, avs, card_verification, merchant_advice, electronic_verification_results, ach_verification, customer, consumer_authentication_response, system_trace_audit_number, payment_account_reference_number, transaction_integrity_code, amex_verbal_auth_reference_number, master_card_service_code, master_card_service_reply_code, master_card_authentication_type, name, routing, merchant_number].hash
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
