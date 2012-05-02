# encoding: UTF-8
require 'spec_helper'

describe "articles/index.html.haml" do
  it "renders a form to create a new article" do
    render
    rendered.should include(articles_path)
  end
end

