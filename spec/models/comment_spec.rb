require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validation tests' do
    let(:comment) { build(:comment) }
    let (:random_comment) { build(:comment) }
  
    it 'has a valid factory' do
      expect(comment.save).to eq(true)
    end
    it 'has a valid random_comment factory' do
      expect(random_comment.save).to eq(true)
    end

    it 'is valid with a title and message' do
        comment = Comment.new(title: "A very important title",
                              message: "a" * 30)
        expect(comment).to be_valid
    end
    it 'is valid with both a title and message' do
      comment.title = nil
      comment.message = nil
      expect(comment.save).to eq(false)
    end
    it 'is not valid without a title' do
      comment.title = nil
      comment.valid?
      expect(comment.errors[:title]).to include("can't be blank")
    end
    it 'is not valid with a title less then 3 characters' do
      comment.title = 'aa'
      expect(comment.save).to eq(false)
    end
    it 'is not valid without a message' do
      comment.message = nil
      expect(comment.save).to eq(false)
    end

    it 'is not valid without a message with at least 10 characters' do
      comment.message = 'ffffffff'
      expect(comment.save).to eq(false)
    end
  end
end
