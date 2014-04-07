require "open-uri"
module ApplicationHelper

	# Returns the full title on a per-page basis.
	def full_title(page_title)
		base_title = "Profit Sync"
		if page_title.empty?
			base_title
		else
			"#{base_title} - #{page_title}"
		end
	end
	
	# Returns the info about last apk version.
	def apk_last_version
	lines = open("http://dl.dropboxusercontent.com/s/knjxyq91042j5y6/version.txt").readlines
	"Последняя версия <strong>#{lines[1]}</strong> Обновлено <strong>#{lines[2]}</strong>"
	end
end
