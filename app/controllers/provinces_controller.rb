class ProvincesController < InheritedResources::Base

  private

    def province_params
      params.require(:province).permit(:name, :code, :pst, :gst, :hst)
    end
end

