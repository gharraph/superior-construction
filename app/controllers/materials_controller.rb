class MaterialsController < ApplicationController

  def index
    @materials = Material.select(:name, :amount, :unit).distinct
                     .paginate(page: params[:page], per_page: 5)
  end

  def aggregate
    @aggregates = Material.select("id, name, sum(amount) as total_amount, unit")
                               .group("name, unit")
  end
end