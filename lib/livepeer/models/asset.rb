=begin
#Livepeer API Reference

#Welcome to the Livepeer API reference docs. Here you will find all the endpoints exposed on the standard Livepeer API, learn how to use them and what they return. 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'date'
require 'time'

module Livepeer
  class Asset
    attr_accessor :id

    # Type of the asset.
    attr_accessor :type

    # Used to form playback URL and storage folder
    attr_accessor :playback_id

    # Whether to generate MP4s for the asset.
    attr_accessor :static_mp4

    # URL for HLS playback
    attr_accessor :playback_url

    # URL to manually download the asset if desired
    attr_accessor :download_url

    attr_accessor :playback_policy

    attr_accessor :source

    attr_accessor :creator_id

    attr_accessor :storage

    attr_accessor :status

    # Name of the asset. This is not necessarily the filename, can be a custom name or title 
    attr_accessor :name

    # Timestamp (in milliseconds) at which asset was created
    attr_accessor :created_at

    # Size of the asset in bytes
    attr_accessor :size

    # Hash of the asset
    attr_accessor :hash

    attr_accessor :video_spec

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
        :'id' => :'id',
        :'type' => :'type',
        :'playback_id' => :'playbackId',
        :'static_mp4' => :'staticMp4',
        :'playback_url' => :'playbackUrl',
        :'download_url' => :'downloadUrl',
        :'playback_policy' => :'playbackPolicy',
        :'source' => :'source',
        :'creator_id' => :'creatorId',
        :'storage' => :'storage',
        :'status' => :'status',
        :'name' => :'name',
        :'created_at' => :'createdAt',
        :'size' => :'size',
        :'hash' => :'hash',
        :'video_spec' => :'videoSpec'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'type' => :'String',
        :'playback_id' => :'String',
        :'static_mp4' => :'Boolean',
        :'playback_url' => :'String',
        :'download_url' => :'String',
        :'playback_policy' => :'PlaybackPolicy',
        :'source' => :'AssetSource',
        :'creator_id' => :'CreatorId',
        :'storage' => :'AssetStorage',
        :'status' => :'AssetStatus',
        :'name' => :'String',
        :'created_at' => :'Float',
        :'size' => :'Float',
        :'hash' => :'Array<AssetHashInner>',
        :'video_spec' => :'AssetVideoSpec'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `livepeer::Asset` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `livepeer::Asset`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'playback_id')
        self.playback_id = attributes[:'playback_id']
      end

      if attributes.key?(:'static_mp4')
        self.static_mp4 = attributes[:'static_mp4']
      end

      if attributes.key?(:'playback_url')
        self.playback_url = attributes[:'playback_url']
      end

      if attributes.key?(:'download_url')
        self.download_url = attributes[:'download_url']
      end

      if attributes.key?(:'playback_policy')
        self.playback_policy = attributes[:'playback_policy']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      else
        self.source = nil
      end

      if attributes.key?(:'creator_id')
        self.creator_id = attributes[:'creator_id']
      end

      if attributes.key?(:'storage')
        self.storage = attributes[:'storage']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'hash')
        if (value = attributes[:'hash']).is_a?(Array)
          self.hash = value
        end
      end

      if attributes.key?(:'video_spec')
        self.video_spec = attributes[:'video_spec']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @source.nil?
        invalid_properties.push('invalid value for "source", source cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      type_validator = EnumAttributeValidator.new('String', ["video", "audio"])
      return false unless type_validator.valid?(@type)
      return false if @source.nil?
      return false if @name.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["video", "audio"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          playback_id == o.playback_id &&
          static_mp4 == o.static_mp4 &&
          playback_url == o.playback_url &&
          download_url == o.download_url &&
          playback_policy == o.playback_policy &&
          source == o.source &&
          creator_id == o.creator_id &&
          storage == o.storage &&
          status == o.status &&
          name == o.name &&
          created_at == o.created_at &&
          size == o.size &&
          hash == o.hash &&
          video_spec == o.video_spec
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, type, playback_id, static_mp4, playback_url, download_url, playback_policy, source, creator_id, storage, status, name, created_at, size, hash, video_spec].hash
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
        klass = Livepeer.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
