require 'test_helper'

class AlarmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alarm = alarms(:one)
  end

  test "should get index" do
    get alarms_url
    assert_response :success
  end

  test "should get new" do
    get new_alarm_url
    assert_response :success
  end

  test "should create alarm" do
    assert_difference('Alarm.count') do
      post alarms_url, params: { alarm: { description: @alarm.description, title: @alarm.title, username: @alarm.username, word: @alarm.word } }
    end

    assert_redirected_to alarm_url(Alarm.last)
  end

  test "should show alarm" do
    get alarm_url(@alarm)
    assert_response :success
  end

  test "should get edit" do
    get edit_alarm_url(@alarm)
    assert_response :success
  end

  test "should update alarm" do
    patch alarm_url(@alarm), params: { alarm: { description: @alarm.description, title: @alarm.title, username: @alarm.username, word: @alarm.word } }
    assert_redirected_to alarm_url(@alarm)
  end

  test "should destroy alarm" do
    assert_difference('Alarm.count', -1) do
      delete alarm_url(@alarm)
    end

    assert_redirected_to alarms_url
  end
end
