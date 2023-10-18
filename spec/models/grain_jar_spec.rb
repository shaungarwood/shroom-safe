# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GrainJar, type: :model do
  describe '#shake' do
    let(:jar) { create(:grain_jar) }

    it 'updates the shaken attribute' do
      expect(jar.shaken).to be_nil
      jar.shake
      expect(jar.shaken).to eq(Date.today)
    end

    context 'when date is provided' do
      let(:date) { Date.today - 1.week }

      it 'updates uses that date' do
        expect(jar.shaken).to be_nil
        jar.shake(date: date)
        expect(jar.shaken).to eq(date)
      end
    end
  end
end
