require 'rails_helper'

RSpec.describe 'grain_jars/new', type: :view do
  before(:each) do
    assign(:grain_jar, GrainJar.new(
                         type: 1,
                         name: 'MyString'
                       ))
  end

  it 'renders new grain_jar form' do
    render

    assert_select 'form[action=?][method=?]', grain_jars_path, 'post' do
      assert_select 'input[name=?]', 'grain_jar[type]'

      assert_select 'input[name=?]', 'grain_jar[name]'
    end
  end
end
