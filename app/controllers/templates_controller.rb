class TemplatesController < ApplicationController
  before_action :set_template, only: [:show, :edit, :update, :destroy, :show_template, :show_page]

  # GET /templates
  # GET /templates.json
  def index
    if  params.has_key?(:website_id)
      @user_website_id=params["website_id"]
    end
      @templates = Template.all
  end

  # GET /templates/1
  # GET /templates/1.json

  # def edit_temp
    # render "/website_layouts/" + @template.template_name + "/index.html", :layout => "layout_themes"       
    # @open_or_edit="open"
  # end
  def show
    # @open_or_edit="open"
    render "/website_layouts/" + @template.template_name + "/index.html", :layout => "layout_themes"
  end

  def show_page
    render "/website_layouts/" + @template.template_name + "/" + params["page_name"] + ".html", :layout => "layout_themes"
  end

  # GET /templates/new
  def new
    @template = Template.new
  end

  # GET /templates/1/edit
  # def temp_edit
  #   # debugger
  #   @template=Template.find(params["id"])
  #   @open_or_edit="edit"
  #   temp_name=@template.template_name
  #   render "/website_layouts/" + temp_name + "/index.html", :layout => "layout_themes"
  # end

  # POST /templates
  # POST /templates.json
  def create
    @template = Template.new(template_params)

    respond_to do |format|
      if @template.save
        format.html { redirect_to @template, notice: 'Template was successfully created.' }
        format.json { render :show, status: :created, location: @template }
      else
        format.html { render :new }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /templates/1
  # PATCH/PUT /templates/1.json
  def update
    respond_to do |format|
      if @template.update(template_params)
        format.html { redirect_to @template, notice: 'Template was successfully updated.' }
        format.json { render :show, status: :ok, location: @template }
      else
        format.html { render :edit }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /templates/1
  # DELETE /templates/1.json
  def destroy
    @template.destroy
    respond_to do |format|
      format.html { redirect_to templates_url, notice: 'Template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # def show_template
  #   # @template.template_id
  #    # Dir.entries("#{Rails.root}/app/website_layouts").each do |file|
  #    #  if file == "." || file == ".."
  #    #      next
  #    #  else
  #    #    file.
  #    #  end
  #    render "#{Rails.root}/app/website_layouts/basic_90_index.html"
  # end

  def edit_with_view
    
  end

  def save_element_id_content
    params["all_edited_texts"].each do |p|
      content=params["all_edited_texts"][p][0]
      id_content=params["all_edited_texts"][p][1].first(-3)
      TemplateElement.create(:element_id=>id_content,:element_value=>content,:used_template_id=> params["temp_name"]
        )

    end
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template
      @template = Template.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_params
      params.fetch(:template, {})
    end
end
