require 'rails_helper'

RSpec.describe "grain_jars/show", type: :view do
  before(:each) do
    assign(:grain_jar, GrainJar.create!(
      type: 2,
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
  end
end
