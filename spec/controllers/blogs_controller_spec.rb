require 'rails_helper'
require 'pp'

describe BlogsController do
  describe 'GET #index' do
    it "@blogsに全てのBlogが入っていること" do
      blogs = [create(:blog),
               create(:blog),
               create(:blog)]
      pp blogs
      get :index
      expect(assigns(:blogs)).to eq blogs
    end
  end

  describe 'POST #create' do
    it "新規作成後に@blogのshowに遷移すること" do
      post :create, params: { blog: attributes_for(:blog) }
      expect(response).to redirect_to blog_path(assigns[:blog])
    end
  end
end
