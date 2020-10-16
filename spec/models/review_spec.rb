require 'rails_helper'

describe Review do
  it { should belong_to(:product) }
  it { should validate_length_of(:content_body).is_at_most(250) }
end