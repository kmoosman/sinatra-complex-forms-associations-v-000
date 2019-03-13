class OwnersController < ApplicationController

  get '/owners' do
    @owners = Owner.all
    erb :'/owners/index'
  end

  get '/owners/new' do
    @pets = Pet.all
    erb :'/owners/new'
  end

  post '/owners' do
    @owner = Owner.create(params[:owner])
    if !params["pet"]["name"].empty?
      @owner.pets << Pet.create(name: params["pet"]["name"])
    end
    # binding.pry
    redirect "owners/#{@owner.id}"
  end

  get '/owners/:id/edit' do
    @owner = Owner.find(params[:id])
    @pets = Pet.all
    erb :'/owners/edit'
  end

  get '/owners/:id' do
    @owner = Owner.find(params[:id])
    erb :'/owners/show'
  end

  patch '/owners/:id' do
<<<<<<< HEAD
    if !params[:owner].keys.include?("pet_ids")
    params[:owner]["pet_ids"] = []
    end

  @owner = Owner.find(params[:id])
   @owner.update(params["owner"])
   if !params["pet"]["name"].empty?
     @owner.pets << Pet.create(name: params["pet"]["name"])
   end
   redirect "owners/#{@owner.id}"
=======
    binding.pry
>>>>>>> a9aa818650672ffc11fd5223e8e9c9185328ba42
  end
end
