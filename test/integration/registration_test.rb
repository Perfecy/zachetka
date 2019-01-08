require 'test_helper'

class RegistrationTest < ActionDispatch::IntegrationTest
  test 'can register, login' do
    get '/users/new'
    assert_response :success

    post '/users',
         params: { user: { name: 'test', password: 'user' } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select '#notice', 'User was successfully created.'

    post '/auth',
         params: { name: 'test', password: 'user' }
    assert_response :redirect
    follow_redirect!
    assert_response :redirect
    follow_redirect!
    assert_response :success

  end

end