require 'spec_helper'
require "rails_helper"

RSpec.describe "Dummy Test", :type => :request do
  describe 'Home page access' do
    it 'just calls home action' do
      # ...
      get :home

      # ...
    end
  end
end