=begin
#Livepeer API Reference

#Welcome to the Livepeer API reference docs. Here you will find all the endpoints exposed on the standard Livepeer API, learn how to use them and what they return. 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'date'
require 'time'

module livepeer
  # An individual metric about viewership of an asset. Necessarily, at least 1 of playbackId and dStorageUrl will be present, depending on the query. 
  class ViewershipMetric
    # The playback ID associated with the metric
    attr_accessor :playback_id

    # The ID of the creator associated with the metric
    attr_accessor :creator_id

    # The ID of the viewer associated with the metric
    attr_accessor :viewer_id

    # The URL of the distributed storage used for the asset
    attr_accessor :d_storage_url

    # Timestamp (in milliseconds) when the metric was recorded. If the query contains a time step, this timestamp will point to the beginning of the time step period. 
    attr_accessor :timestamp

    # The device used by the viewer
    attr_accessor :device

    # The type of the device used by the viewer
    attr_accessor :device_type

    # The CPU used by the viewer's device
    attr_accessor :cpu

    # The operating system used by the viewer
    attr_accessor :os

    # The browser used by the viewer
    attr_accessor :browser

    # The browser engine used by the viewer's browser
    attr_accessor :browser_engine

    # The continent where the viewer is located
    attr_accessor :continent

    # The country where the viewer is located
    attr_accessor :country

    # The subdivision (e.g., state or province) where the viewer is located 
    attr_accessor :subdivision

    # The timezone where the viewer is located
    attr_accessor :timezone

    # Geographic encoding of the viewers location. Accurate to 3 digits.
    attr_accessor :geohas

    # The number of views for the asset
    attr_accessor :view_count

    # The total playtime in minutes for the asset
    attr_accessor :playtime_mins

    # The time-to-first-frame (TTFF) in milliseconds
    attr_accessor :ttff_ms

    # The rebuffering ratio for the asset
    attr_accessor :rebuffer_ratio

    # The error rate for the asset
    attr_accessor :error_rate

    # The percentage of sessions that existed before the asset started playing 
    attr_accessor :exits_before_start

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'playback_id' => :'playbackId',
        :'creator_id' => :'creatorId',
        :'viewer_id' => :'viewerId',
        :'d_storage_url' => :'dStorageUrl',
        :'timestamp' => :'timestamp',
        :'device' => :'device',
        :'device_type' => :'deviceType',
        :'cpu' => :'cpu',
        :'os' => :'os',
        :'browser' => :'browser',
        :'browser_engine' => :'browserEngine',
        :'continent' => :'continent',
        :'country' => :'country',
        :'subdivision' => :'subdivision',
        :'timezone' => :'timezone',
        :'geohas' => :'geohas',
        :'view_count' => :'viewCount',
        :'playtime_mins' => :'playtimeMins',
        :'ttff_ms' => :'ttffMs',
        :'rebuffer_ratio' => :'rebufferRatio',
        :'error_rate' => :'errorRate',
        :'exits_before_start' => :'exitsBeforeStart'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'playback_id' => :'String',
        :'creator_id' => :'String',
        :'viewer_id' => :'String',
        :'d_storage_url' => :'String',
        :'timestamp' => :'Float',
        :'device' => :'String',
        :'device_type' => :'String',
        :'cpu' => :'String',
        :'os' => :'String',
        :'browser' => :'String',
        :'browser_engine' => :'String',
        :'continent' => :'String',
        :'country' => :'String',
        :'subdivision' => :'String',
        :'timezone' => :'String',
        :'geohas' => :'String',
        :'view_count' => :'Integer',
        :'playtime_mins' => :'Float',
        :'ttff_ms' => :'Float',
        :'rebuffer_ratio' => :'Float',
        :'error_rate' => :'Float',
        :'exits_before_start' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `livepeer::ViewershipMetric` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `livepeer::ViewershipMetric`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'playback_id')
        self.playback_id = attributes[:'playback_id']
      end

      if attributes.key?(:'creator_id')
        self.creator_id = attributes[:'creator_id']
      end

      if attributes.key?(:'viewer_id')
        self.viewer_id = attributes[:'viewer_id']
      end

      if attributes.key?(:'d_storage_url')
        self.d_storage_url = attributes[:'d_storage_url']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'device')
        self.device = attributes[:'device']
      end

      if attributes.key?(:'device_type')
        self.device_type = attributes[:'device_type']
      end

      if attributes.key?(:'cpu')
        self.cpu = attributes[:'cpu']
      end

      if attributes.key?(:'os')
        self.os = attributes[:'os']
      end

      if attributes.key?(:'browser')
        self.browser = attributes[:'browser']
      end

      if attributes.key?(:'browser_engine')
        self.browser_engine = attributes[:'browser_engine']
      end

      if attributes.key?(:'continent')
        self.continent = attributes[:'continent']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'subdivision')
        self.subdivision = attributes[:'subdivision']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.key?(:'geohas')
        self.geohas = attributes[:'geohas']
      end

      if attributes.key?(:'view_count')
        self.view_count = attributes[:'view_count']
      else
        self.view_count = nil
      end

      if attributes.key?(:'playtime_mins')
        self.playtime_mins = attributes[:'playtime_mins']
      else
        self.playtime_mins = nil
      end

      if attributes.key?(:'ttff_ms')
        self.ttff_ms = attributes[:'ttff_ms']
      end

      if attributes.key?(:'rebuffer_ratio')
        self.rebuffer_ratio = attributes[:'rebuffer_ratio']
      end

      if attributes.key?(:'error_rate')
        self.error_rate = attributes[:'error_rate']
      end

      if attributes.key?(:'exits_before_start')
        self.exits_before_start = attributes[:'exits_before_start']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @view_count.nil?
        invalid_properties.push('invalid value for "view_count", view_count cannot be nil.')
      end

      if @playtime_mins.nil?
        invalid_properties.push('invalid value for "playtime_mins", playtime_mins cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @view_count.nil?
      return false if @playtime_mins.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          playback_id == o.playback_id &&
          creator_id == o.creator_id &&
          viewer_id == o.viewer_id &&
          d_storage_url == o.d_storage_url &&
          timestamp == o.timestamp &&
          device == o.device &&
          device_type == o.device_type &&
          cpu == o.cpu &&
          os == o.os &&
          browser == o.browser &&
          browser_engine == o.browser_engine &&
          continent == o.continent &&
          country == o.country &&
          subdivision == o.subdivision &&
          timezone == o.timezone &&
          geohas == o.geohas &&
          view_count == o.view_count &&
          playtime_mins == o.playtime_mins &&
          ttff_ms == o.ttff_ms &&
          rebuffer_ratio == o.rebuffer_ratio &&
          error_rate == o.error_rate &&
          exits_before_start == o.exits_before_start
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [playback_id, creator_id, viewer_id, d_storage_url, timestamp, device, device_type, cpu, os, browser, browser_engine, continent, country, subdivision, timezone, geohas, view_count, playtime_mins, ttff_ms, rebuffer_ratio, error_rate, exits_before_start].hash
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
        klass = livepeer.const_get(type)
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
