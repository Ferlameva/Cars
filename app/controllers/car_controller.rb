class CarController < ApplicationController
  
  def newCar

  end

  def index

  end

  def create

  	# @current_brand = Brand.find_by(name: params[:createCar][:brand])
	@current_brand = Brand.where("name ILIKE ?", params[:createCar][:brand]).first

  	if @current_brand == nil
  			b = Brand.create(name: params[:createCar][:brand].upcase)
  			bm = Model.create(name: params[:createCar][:model].upcase, model_year: params[:createCar][:year], brand: b)
  			bml = Line.create(name: params[:createCar][:line].capitalize, price: params[:createCar][:price], model: bm)
  	else
  		@current_model = Model.where("name ILIKE ? and model_year = ?", params[:createCar][:model], params[:createCar][:year]).first
  		if @current_model == nil
  				m = Model.create(name: params[:createCar][:model].upcase, model_year: params[:createCar][:year], brand: @current_brand)
  				Line.create(name: params[:createCar][:line].capitalize, price: params[:createCar][:price], model: m)
		else
			# @current_line = Line.where("name ILIKE ?", params[:createCar][:line]).first
			# current_line = @current_brand.@current_model.find_by(name: params[:createCar][:line])
			# if @current_line == nil
					Line.create(name: params[:createCar][:line].capitalize, price: params[:createCar][:price], model: @current_model)
			# end

		end
	end

	redirect_to all_cars_path

  end

  def update
  	
  end

end
