module PietimerCis
	module ViewHelpers
		def pietimer_tag(options={})
			messages = "<script type=\"text/javascript\">"

			unless options.blank?
				messages += "$(function(){"
				messages += "$(\"##{options[:id]}\").pietimer({seconds: #{options[:time].blank? ? 10 : options[:time].to_i },color: \"#{options[:color].blank? ? 'blank' : options[:color] }\",height: 100,width: 100},#{options[:callback].blank? ? "function(){alert('Time is Out.')}" : options[:callback] });"
				messages += "$(\"##{options[:id]}\").pietimer('start');"
				messages += "});"
			end	
	    messages += "</script>"
	    messages.html_safe
		end
	end
end
