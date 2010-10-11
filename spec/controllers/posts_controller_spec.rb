require 'spec_helper'

describe PostsController, "GET new post form" do
  before :each do
    get :new
  end

  it { should assign_to(:post).with_kind_of(Post) }
end

describe PostsController, "POST create post" do
  before :each do
    post :create
  end
  it { should set_the_flash.to "Post created successfully" }
end
