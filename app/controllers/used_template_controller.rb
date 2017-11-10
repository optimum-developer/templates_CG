class UsedTemplateController < ApplicationController
	def edit
		@used_temp_id=UsedTemplate.find(params["id"]).id
		@used_temp_temp_id=UsedTemplate.find(params["id"]).template_id
	    @template=Template.find(@used_temp_temp_id)
	    @open_or_edit="edit"
	    temp_name=@template.template_name
	    render "/website_layouts/" + temp_name + "/index.html", :layout => "layout_themes"
	end

	# def save_element_id_content
	#     params["all_edited_texts"].each do |p|
	#       content=params["all_edited_texts"][p][0]
	#       id_content=params["all_edited_texts"][p][1].first(-3)
	#       UsedTemplate.create(:element_id=>id_content,:element_value=>content,:template_id=> params["temp_name"]
	#         )
	#     end
   
 #  	end

end
