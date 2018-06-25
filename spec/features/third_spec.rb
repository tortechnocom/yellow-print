require 'rails_helper'

describe 'third screen', js: true do
  let(:normal_user) { create_normal_user(email: 'normal@user.com') }

  before do
    normal_user
    sign_in normal_user
  end

  it 'check third page' do
    click_link 'Third'
    expect(page).to have_content 'Third page'
  end
end
