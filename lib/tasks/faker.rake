namespace :faker do
  task generate: :environment do

    50.times do
      post = Post.create!(
        title: Faker::Hipster.sentence,
        body: Faker::Lorem.paragraphs.join("\n\n").to_s
      )

      puts post.title
    end
  end
end

