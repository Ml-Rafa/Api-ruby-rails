require 'test_helper'

class PessosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pesso = pessos(:one)
  end

  test "should get index" do
    get pessos_url, as: :json
    assert_response :success
  end

  test "should create pesso" do
    assert_difference('Pesso.count') do
      post pessos_url, params: { pesso: { email: @pesso.email, idade: @pesso.idade, nome: @pesso.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show pesso" do
    get pesso_url(@pesso), as: :json
    assert_response :success
  end

  test "should update pesso" do
    patch pesso_url(@pesso), params: { pesso: { email: @pesso.email, idade: @pesso.idade, nome: @pesso.nome } }, as: :json
    assert_response 200
  end

  test "should destroy pesso" do
    assert_difference('Pesso.count', -1) do
      delete pesso_url(@pesso), as: :json
    end

    assert_response 204
  end
end
