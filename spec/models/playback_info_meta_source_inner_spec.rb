=begin
#Livepeer API Reference

#Welcome to the Livepeer API reference docs. Here you will find all the endpoints exposed on the standard Livepeer API, learn how to use them and what they return. 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for livepeer::PlaybackInfoMetaSourceInner
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe livepeer::PlaybackInfoMetaSourceInner do
  let(:instance) { livepeer::PlaybackInfoMetaSourceInner.new }

  describe 'test an instance of PlaybackInfoMetaSourceInner' do
    it 'should create an instance of PlaybackInfoMetaSourceInner' do
      expect(instance).to be_instance_of(livepeer::PlaybackInfoMetaSourceInner)
    end
  end
  describe 'test attribute "hrn"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["HLS (TS)", "MP4", "WebRTC (H264)"])
      # validator.allowable_values.each do |value|
      #   expect { instance.hrn = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["html5/application/vnd.apple.mpegurl", "html5/video/mp4", "html5/video/h264"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "url"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "size"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "width"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "height"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "bitrate"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
