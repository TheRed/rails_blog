require 'rails_helper'

describe BlogsController do
  describe 'GET #index' do
    it "@blogsに全てのBlogが入っていること"
  end

  describe 'POST #create' do
    it "新規作成後に@blogのshowに遷移すること"
  end
end
