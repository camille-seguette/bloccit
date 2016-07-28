require 'rails_helper'

RSpec.describe Answer, type: :model do

  let(:answer) { Answer.create!(body: "Answer") }

  describe "attributes" do
    it "has a body attribute" do
      expect(answer).to have_attributes(body: "Answer")
    end
  end
end
