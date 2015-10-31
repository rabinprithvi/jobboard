class Job < ActiveRecord::Base
	searchkick text_start: [:title]
end
