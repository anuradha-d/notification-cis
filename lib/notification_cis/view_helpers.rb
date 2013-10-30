module NotificationCis
	module ViewHelpers
		def flash_helper(flash_message)
			messages = "<script type=\"text/javascript\">"
	    if flash_message[:notice]
	      messages += "$.n.success(\"#{ flash_message[:notice] }\");"
	    end
	    if flash_message[:error]
	      messages += "$.n.error(\"#{ flash_message[:error] }\");"
	    end
	    if flash_message[:success]
	      messages += "$.n.success(\"#{ flash_message[:success]}\");"
	    end
	    if flash_message[:alert]
	      messages += "$.n.warning(\"#{ flash_message[:alert]}\");"
	    end
	    messages += "</script>"
	    messages.html_safe
		end
	end
end
