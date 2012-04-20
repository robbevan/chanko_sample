# coding: utf-8
require 'spec_helper'

describe AuthController do
  it "login as name" do
    post :login, :name => 'alice'
    response.should redirect_to(top_path)
    session['user'].should be_kind_of(User)
  end

  it 'logout' do
    post :logout
    response.should redirect_to(top_path)
    session['user'].should be_nil
  end
end
