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
    it "新規作成後に@blogのshowに遷移すること"
  end
end
