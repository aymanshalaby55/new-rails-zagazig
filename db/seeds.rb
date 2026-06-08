# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Post.destroy_all
Editor.destroy_all
PostEditor.destroy_all

user1 = User.create!(
  name: "Ayman",
  email: "ayman@example.com"
)

user2 = User.create!(
  name: "Ali",
  email: "ali@example.com"
)

post1 = Post.create!(
  title: "Rails MVC",
  body: "Learning Rails associations",
  creator: user1
)

post2 = Post.create!(
  title: "Active Record",
  body: "Understanding relationships",
  creator: user2
)

editor1 = Editor.create!(
  name: "Sara",
  email: "sara@example.com"
)

editor2 = Editor.create!(
  name: "Omar",
  email: "omar@example.com"
)

PostEditor.create!(post: post1, editor: editor1)
PostEditor.create!(post: post1, editor: editor2)
PostEditor.create!(post: post2, editor: editor1)