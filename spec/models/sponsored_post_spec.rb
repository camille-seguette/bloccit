require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:topic) { Topic.create!(name: name, description: description) }
  let(:sponsored_post) { topic.sponsoredposts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: integer) }

  it { is_expected.to belong_to(:topic) }
end
