require 'test_helper'

class OrderedChordsControllerTest < ActionController::TestCase
  setup do
    @ordered_chord = ordered_chords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordered_chords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordered_chord" do
    assert_difference('OrderedChord.count') do
      post :create, ordered_chord: { main_chord_id: @ordered_chord.main_chord_id, order: @ordered_chord.order, progessions_id: @ordered_chord.progessions_id }
    end

    assert_redirected_to ordered_chord_path(assigns(:ordered_chord))
  end

  test "should show ordered_chord" do
    get :show, id: @ordered_chord
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordered_chord
    assert_response :success
  end

  test "should update ordered_chord" do
    patch :update, id: @ordered_chord, ordered_chord: { main_chord_id: @ordered_chord.main_chord_id, order: @ordered_chord.order, progessions_id: @ordered_chord.progessions_id }
    assert_redirected_to ordered_chord_path(assigns(:ordered_chord))
  end

  test "should destroy ordered_chord" do
    assert_difference('OrderedChord.count', -1) do
      delete :destroy, id: @ordered_chord
    end

    assert_redirected_to ordered_chords_path
  end
end
