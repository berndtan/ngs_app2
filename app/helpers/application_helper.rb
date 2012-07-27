module ApplicationHelper


	# Returns the full title on a per-page basis.
	def full_title(page_title)
		base_title = "Next gen sequencing App 2"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
