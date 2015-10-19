class MaterialsController < ApplicationController

  def index
    @materials = Material.select(:name).distinct.paginate(page: params[:page],
                                   per_page: 5)
  end
end