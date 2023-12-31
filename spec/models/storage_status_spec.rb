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

# Unit tests for livepeer::StorageStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe livepeer::StorageStatus do
  let(:instance) { livepeer::StorageStatus.new }

  describe 'test an instance of StorageStatus' do
    it 'should create an instance of StorageStatus' do
      expect(instance).to be_instance_of(livepeer::StorageStatus)
    end
  end
  describe 'test attribute "phase"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["waiting", "processing", "ready", "failed", "reverted"])
      # validator.allowable_values.each do |value|
      #   expect { instance.phase = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "progress"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "error_message"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "tasks"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
