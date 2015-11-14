class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update, :destroy]

  # GET /packages
  # GET /packages.json
  def index
    @packages = Package.all
    @packages2 = @packages.map do |package|
      [
            package.hours,
            package.first_videographer,
            package.first_videographer_hours,
            package.second_videographer,
            package.second_videographer_hours,
            package.highlight_video,
            package.documentary_edit,
            package.published_dvds,
            package.published_bds,
            package.over_eight_hours,
            package.over_ten_hours
        ]
    end.transpose
    @row_headers = [
    'Hours Total',
    'First Videographer',
    'First Videographer (hours)',
    'Second Videographer',
    'Second Videographer (hours)',
    'Highlight Video',
    'Documentary Edit',
    "Published DVD's",
    "Published BD's",
    'Over 8 hours % discount',
    'Over 10 hours % discount',
    ]
  end

  # GET /packages/1
  # GET /packages/1.json
  def show
  end

  # GET /packages/new
  def new
    @package = Package.new
  end

  # GET /packages/1/edit
  def edit
  end

  # POST /packages
  # POST /packages.json
  def create
    @package = Package.new(package_params)

    respond_to do |format|
      if @package.save
        format.html { redirect_to @package, notice: 'Package was successfully created.' }
        format.json { render :show, status: :created, location: @package }
      else
        format.html { render :new }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /packages/1
  # PATCH/PUT /packages/1.json
  def update
    respond_to do |format|
      if @package.update(package_params)
        format.html { redirect_to @package, notice: 'Package was successfully updated.' }
        format.json { render :show, status: :ok, location: @package }
      else
        format.html { render :edit }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packages/1
  # DELETE /packages/1.json
  def destroy
    @package.destroy
    respond_to do |format|
      format.html { redirect_to packages_url, notice: 'Package was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package
      @package = Package.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def package_params
      params.require(:package).permit(:hours, :first_videographer, :first_videographer_hours, :second_videographer, :second_videographer_hours, :highlight_video, :documentary_edit, :published_dvds, :published_bds, :over_eight_hours, :over_ten_hours)
    end
end
