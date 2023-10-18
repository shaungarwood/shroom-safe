# frozen_string_literal: true

describe 'grain_jars/edit' do
  let(:grain_jar) { create(:grain_jar) }

  it 'renders the edit grain_jar form' do
    visit edit_grain_jar_path(grain_jar)

    expect(page).to have_selector(:id, 'grain_jar_grain')
  end
end
