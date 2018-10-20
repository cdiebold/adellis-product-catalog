FactoryBot.define do
  factory :comment do
    title { 'Order Status' }
    message { 'I am inquiring about the status of my order, it has an order number of 321wede. Thank You!' }
  end

  factory :random_comment, class: Comment do
    title { Faker::HarryPotter.book }
    message { Faker::HarryPotter.quote }
    message
  end
end
