require 'random_data'

# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end

posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

10.times do
  Advertisement.create!(
    title:  RandomData.random_sentence,
    copy:   "THIS IS THE COPY"
    price:

end

advertisements = Advertisement.all

Post.find_or_create_by(title:"test title", body:"test body")
Comment.find_or_create_by(body:"test comment body")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Advertisement.count} Advertisements created"
