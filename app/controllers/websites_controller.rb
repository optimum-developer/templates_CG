class WebsitesController < ApplicationController
  before_action :set_website, only: [:show, :edit, :update, :destroy, :show_template]

  # GET /websites
  # GET /websites.json
  def index
    @websites = Website.all
  end

  # GET /websites/1
  # GET /websites/1.json
  def show
    # @website_template = @website.templates
    # debugger
    @website_name=@website.name
    # puts @website_template.template_id
  end

  # GET /websites/new
  def new
    @website = Website.new
  end

  # GET /websites/1/edit
  def edit
  end

  def update_template_id
    # current_user.websites.update(:template_id=>"")
    # current_user.websites.update(:template_id=>params["temp_id"])
    check_temp=current_user.used_templates.find_by(:website_id=>params["webs_id"])
    if check_temp.present?
      check_temp.update(:template_id=>"")
      check_temp.update(:template_id=>params["temp_id"])
    else
      current_user.used_templates.create(:template_id=>params["temp_id"],:website_id=>params["webs_id"])
    end
  end

  def create
    @website = current_user.websites.new(website_params)
    
    respond_to do |format|
      if @website.save

        format.html { redirect_to @website, notice: 'website was successfully created.' }
        format.json { render :show, status: :created, location: @website }
      else
        format.html { render :new }
        format.json { render json: @website.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /websites/1
  # PATCH/PUT /websites/1.json
  def update
    respond_to do |format|
      if @website.update(website_params)
        format.html { redirect_to @website, notice: 'website was successfully updated.' }
        format.json { render :show, status: :ok, location: @website }
      else
        format.html { render :edit }
        format.json { render json: @website.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /websites/1
  # DELETE /websites/1.json
  def destroy
    @website.destroy
    respond_to do |format|
      format.html { redirect_to websites_url, notice: 'website was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_website
      @website = Website.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def website_params
      params.require(:website).permit(:website_type,:category)
    end
end
