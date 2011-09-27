require 'test_helper'

class RjsonTest < ActiveSupport::IntegrationCase
  test "Default RJSON show action" do
    visit person_path('Jan', format: 'json')

    person = nil
    assert_nothing_raised do
      person = JSON page.source
    end

    assert_equal 'Jan', person['first_name']
    assert_equal 'De Poorter', person['last_name']
  end

  test "RJSON with collection and render" do
    visit people_path(format: 'json')

    people = nil
    assert_nothing_raised do
      people = JSON page.source
    end

    assert_equal 3, people.size
    assert_equal 'Jan', people.first['first_name']
  end
end
