# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Category.create!([
  { category: "国語" },
  { category: "数学" },
  { category: "物理" },
  { category: "生物" },
  { category: "化学" },
  { category: "地学" },
  { category: "地理" },
  { category: "日本史" },
  { category: "世界史" },
  { category: "英語" }
])