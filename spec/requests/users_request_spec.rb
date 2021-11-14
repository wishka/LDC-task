require 'rails_helper'

RSpec.describe "Users", type: :request do
  it 'new' do
    get '/users/new'
    expect(responce).to be_ok
    expect(assigns(:user)).to be_a_new(User)
  end
end
