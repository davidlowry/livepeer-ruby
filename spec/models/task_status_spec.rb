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

# Unit tests for livepeer::TaskStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe livepeer::TaskStatus do
  let(:instance) { livepeer::TaskStatus.new }

  describe 'test an instance of TaskStatus' do
    it 'should create an instance of TaskStatus' do
      expect(instance).to be_instance_of(livepeer::TaskStatus)
    end
  end
  describe 'test attribute "phase"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["pending", "waiting", "running", "failed", "completed", "cancelled"])
      # validator.allowable_values.each do |value|
      #   expect { instance.phase = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "updated_at"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
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

  describe 'test attribute "retries"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "step"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
