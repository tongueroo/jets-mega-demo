class CleanJob < ApplicationJob
  # Deletes all the current DB records and reseed the db
  rate "1 day"
  def refresh
    Post.delete_all
    3.times do |i|
      Post.create(title: "Test post #{i+1}")
    end

    Book.delete_all
    3.times do |i|
      Book.create(title: "Test book #{i+1}")
    end
  end
end
