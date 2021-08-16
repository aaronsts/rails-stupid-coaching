require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'h1', text: 'Ask your coach anything'
  end

  test 'asking a question results in unhappy coach' do
    visit ask_url
    fill_in 'question', with: 'what?'
    click_on 'Ask'

    assert_text 'Silly question, get dressed and go to work!'
  end

  test "telling coach that you'll work results in happy coach" do
    visit ask_url
    fill_in 'question', with: 'I am going to work'
    click_on 'Ask'

    assert_text 'Great!'
  end
end
