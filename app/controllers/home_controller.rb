class HomeController < ApplicationController
  def index

  end

  def lookup
    if params[:zip_code].present?
      unless @location = Location.find_by_zip(params[:zip_code])
        @zip_info, @error = TaxJarApi.tax_rate(params[:zip_code])
        if @zip_info
          @location = Location.create(@zip_info)
        end
      end

      render :index
    else
      @error = "Zip code is required."
      render :index
    end
  end
end
