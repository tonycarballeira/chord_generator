require 'test_helper'

class MainChordsControllerTest < ActionController::TestCase
  setup do
    @main_chord = main_chords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:main_chords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main_chord" do
    assert_difference('MainChord.count') do
      post :create, main_chord: { name: @main_chord.name }
    end

    assert_redirected_to main_chord_path(assigns(:main_chord))
  end

  test "should show main_chord" do
    get :show, id: @main_chord
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @main_chord
    assert_response :success
  end

  test "should update main_chord" do
    patch :update, id: @main_chord, main_chord: { name: @main_chord.name }
    assert_redirected_to main_chord_path(assigns(:main_chord))
  end

  test "should destroy main_chord" do
    assert_difference('MainChord.count', -1) do
      delete :destroy, id: @main_chord
    end

    assert_redirected_to main_chords_path
  end
end
