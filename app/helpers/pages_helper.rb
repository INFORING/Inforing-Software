module PagesHelper
	def collapsing_header
	  class_name = current_page?(root_path) ? '' : 'collapsing_header'
	end

	def full_photo
		unless current_page?(root_path) or current_page?(portfolio_items_path)
	  	render 'layouts/full_photo'
	  end
	end

	def full_page_photo
		if current_page?(about_path)
			'about'
		elsif current_page?(price_path)
			'price'
		end
	end

	def nav_link(link_text, link_path)
	  class_name = current_page?(link_path) ? 'active' : ''

	  content_tag(:li, :class => class_name) do
	    link_to link_text, link_path, target: "_top"
	  end
	end
end
