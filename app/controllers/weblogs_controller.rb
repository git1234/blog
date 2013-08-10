class WeblogsController < ApplicationController
  before_action :set_weblog, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_blog_user!

  # GET /weblogs
  # GET /weblogs.json
  def index
    @weblogs = Weblog.all
  end

  # GET /weblogs/1
  # GET /weblogs/1.json
  def show
  end

  # GET /weblogs/new
  def new
    @weblog = Weblog.new
    @weblog_relation_profile = Profile.find(session[:login])
  end

  # GET /weblogs/1/edit
  def edit
    @weblog_relation_profile = Profile.find(session[:login])
  end

  # POST /weblogs
  # POST /weblogs.json
  def create
    @weblog = Weblog.new(weblog_params)

    respond_to do |format|
      if @weblog.save
        format.html { redirect_to @weblog, notice: 'Weblog was successfully created.' }
        format.json { render action: 'show', status: :created, location: @weblog }
      else
        format.html { render action: 'new' }
        format.json { render json: @weblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weblogs/1
  # PATCH/PUT /weblogs/1.json
  def update
    respond_to do |format|
      if @weblog.update(weblog_params)
        format.html { redirect_to @weblog, notice: 'Weblog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @weblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weblogs/1
  # DELETE /weblogs/1.json
  def destroy
    @weblog.destroy
    respond_to do |format|
      format.html { redirect_to weblogs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weblog
      @weblog = Weblog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weblog_params
      params.require(:weblog).permit(:user_id, :blog_name, :profile_id)
    end
end
