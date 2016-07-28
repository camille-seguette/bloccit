require 'rails_helper'

RSpec.describe Question, type: :model do

let(:question) { Question.create!(title: "Question") }

describe "attributes" do
  it "has a title attribute" do
    expect(question).to have_attributes(title: "Question")
    end
  end
end
