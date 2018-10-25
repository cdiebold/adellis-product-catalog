require 'rails_helper'

RSpec.describe Demilitarization, type: :model do
    it 'is valid with a code and a description' do
        demil = Demilitarization.new(code: 'a', description: 'a' * 5)
        demil.valid?
        expect(demil).to be_valid
    end
    it 'is not valid with a code greater than 1 in length' do
        demil = Demilitarization.new(code: 'a', description: 'a' * 5)
        demil.code = 'aaa'
        demil.valid?
        expect(demil).to_not be_valid
    end

    it 'is not valid with duplicate codes' do
        Demilitarization.create(code: 'a', description: 'a' * 5)
        demil = Demilitarization.new(code: 'a', description: 'a' * 5)
        demil.valid?
        expect(demil.errors[:code]).to  include('has already been taken')
    end

    it 'can have a description greater than 255 in length' do
        demil = Demilitarization.new(code: 'a', description: 'a' * 500)
        demil.valid?
        expect(demil).to be_valid
    end
end
