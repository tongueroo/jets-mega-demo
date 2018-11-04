# Book is defined in the demo-rails app also. Since we're cheating by using the
# same db, we'll will define it here also so we can clean the table daily in
# cleaner_job.rb
class Book < ApplicationRecord
end
