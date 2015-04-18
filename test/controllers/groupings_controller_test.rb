require 'test_helper'

class GroupingsControllerTest < ActionController::TestCase
  test 'should render the search results as json' do
    Grouping.stubs(:search).with('search-term').returns(['result-1', 'result-2'])
    get :search, term: 'search-term'
    assert_equal ['result-1', 'result-2'], ActiveSupport::JSON.decode(response.body)
  end
end
