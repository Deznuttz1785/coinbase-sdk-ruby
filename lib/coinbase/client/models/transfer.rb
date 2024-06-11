=begin
#Coinbase Platform API

#This is the OpenAPI 3.0 specification for the Coinbase Platform APIs, used in conjunction with the Coinbase Platform SDKs.

The version of the OpenAPI document: 0.0.1-alpha
Contact: yuga.cohler@coinbase.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Coinbase::Client
  # A transfer of an asset from one address to another
  class Transfer
    # The ID of the blockchain network
    attr_accessor :network_id

    # The ID of the wallet that owns the from address
    attr_accessor :wallet_id

    # The onchain address of the sender
    attr_accessor :address_id

    # The onchain address of the recipient
    attr_accessor :destination

    # The amount in the atomic units of the asset
    attr_accessor :amount

    # The ID of the asset being transferred
    attr_accessor :asset_id

    attr_accessor :asset

    # The ID of the transfer
    attr_accessor :transfer_id

    attr_accessor :transaction

    # The unsigned payload of the transfer. This is the payload that needs to be signed by the sender.
    attr_accessor :unsigned_payload

    # The signed payload of the transfer. This is the payload that has been signed by the sender.
    attr_accessor :signed_payload

    # The hash of the transfer transaction
    attr_accessor :transaction_hash

    # The status of the transfer
    attr_accessor :status

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'network_id' => :'network_id',
        :'wallet_id' => :'wallet_id',
        :'address_id' => :'address_id',
        :'destination' => :'destination',
        :'amount' => :'amount',
        :'asset_id' => :'asset_id',
        :'asset' => :'asset',
        :'transfer_id' => :'transfer_id',
        :'transaction' => :'transaction',
        :'unsigned_payload' => :'unsigned_payload',
        :'signed_payload' => :'signed_payload',
        :'transaction_hash' => :'transaction_hash',
        :'status' => :'status'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'network_id' => :'String',
        :'wallet_id' => :'String',
        :'address_id' => :'String',
        :'destination' => :'String',
        :'amount' => :'String',
        :'asset_id' => :'String',
        :'asset' => :'Asset',
        :'transfer_id' => :'String',
        :'transaction' => :'Transaction',
        :'unsigned_payload' => :'String',
        :'signed_payload' => :'String',
        :'transaction_hash' => :'String',
        :'status' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Coinbase::Client::Transfer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Coinbase::Client::Transfer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'network_id')
        self.network_id = attributes[:'network_id']
      else
        self.network_id = nil
      end

      if attributes.key?(:'wallet_id')
        self.wallet_id = attributes[:'wallet_id']
      else
        self.wallet_id = nil
      end

      if attributes.key?(:'address_id')
        self.address_id = attributes[:'address_id']
      else
        self.address_id = nil
      end

      if attributes.key?(:'destination')
        self.destination = attributes[:'destination']
      else
        self.destination = nil
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      else
        self.amount = nil
      end

      if attributes.key?(:'asset_id')
        self.asset_id = attributes[:'asset_id']
      else
        self.asset_id = nil
      end

      if attributes.key?(:'asset')
        self.asset = attributes[:'asset']
      else
        self.asset = nil
      end

      if attributes.key?(:'transfer_id')
        self.transfer_id = attributes[:'transfer_id']
      else
        self.transfer_id = nil
      end

      if attributes.key?(:'transaction')
        self.transaction = attributes[:'transaction']
      else
        self.transaction = nil
      end

      if attributes.key?(:'unsigned_payload')
        self.unsigned_payload = attributes[:'unsigned_payload']
      else
        self.unsigned_payload = nil
      end

      if attributes.key?(:'signed_payload')
        self.signed_payload = attributes[:'signed_payload']
      end

      if attributes.key?(:'transaction_hash')
        self.transaction_hash = attributes[:'transaction_hash']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @network_id.nil?
        invalid_properties.push('invalid value for "network_id", network_id cannot be nil.')
      end

      if @wallet_id.nil?
        invalid_properties.push('invalid value for "wallet_id", wallet_id cannot be nil.')
      end

      if @address_id.nil?
        invalid_properties.push('invalid value for "address_id", address_id cannot be nil.')
      end

      if @destination.nil?
        invalid_properties.push('invalid value for "destination", destination cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @asset_id.nil?
        invalid_properties.push('invalid value for "asset_id", asset_id cannot be nil.')
      end

      if @asset.nil?
        invalid_properties.push('invalid value for "asset", asset cannot be nil.')
      end

      if @transfer_id.nil?
        invalid_properties.push('invalid value for "transfer_id", transfer_id cannot be nil.')
      end

      if @transaction.nil?
        invalid_properties.push('invalid value for "transaction", transaction cannot be nil.')
      end

      if @unsigned_payload.nil?
        invalid_properties.push('invalid value for "unsigned_payload", unsigned_payload cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @network_id.nil?
      return false if @wallet_id.nil?
      return false if @address_id.nil?
      return false if @destination.nil?
      return false if @amount.nil?
      return false if @asset_id.nil?
      return false if @asset.nil?
      return false if @transfer_id.nil?
      return false if @transaction.nil?
      return false if @unsigned_payload.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["pending", "broadcast", "complete", "failed"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["pending", "broadcast", "complete", "failed"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          network_id == o.network_id &&
          wallet_id == o.wallet_id &&
          address_id == o.address_id &&
          destination == o.destination &&
          amount == o.amount &&
          asset_id == o.asset_id &&
          asset == o.asset &&
          transfer_id == o.transfer_id &&
          transaction == o.transaction &&
          unsigned_payload == o.unsigned_payload &&
          signed_payload == o.signed_payload &&
          transaction_hash == o.transaction_hash &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [network_id, wallet_id, address_id, destination, amount, asset_id, asset, transfer_id, transaction, unsigned_payload, signed_payload, transaction_hash, status].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = Coinbase::Client.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
