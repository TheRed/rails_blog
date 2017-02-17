require 'rails_helper'
require 'pp'

describe BlogsController do
  before :each do
    @blogs = [create(:blog),
              create(:blog),
              create(:blog)]
    pp @blogs
  end
  describe 'GET #index' do
    it "@blogsに全てのBlogが入っていること" do
      get :index
      expect(assigns(:blogs)).to eq @blogs
    end
  end

  describe 'POST #create' do
    it "新規作成後に@blogのshowに遷移すること"
  end
end
