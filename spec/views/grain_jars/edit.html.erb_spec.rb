# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'grain_jars/edit', type: :view do
  let(:grain_jar) do
    GrainJar.create!(
      type: 1,
      name: 'MyString'
    )
  end

  before(:each) do
    assign(:grain_jar, grain_jar)
  end

  it 'renders the edit grain_jar form' do
    render

    assert_select 'form[action=?][method=?]', grain_jar_path(grain_jar), 'post' do
      assert_select 'input[name=?]', 'grain_jar[type]'

      assert_select 'input[name=?]', 'grain_jar[name]'
    end
  end
end
