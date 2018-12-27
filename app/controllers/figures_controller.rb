class FiguresController < ApplicationController

  get '/figures' do
    erb :"figures/index"
  end

  get '/figures/new' do
    erb :"figures/new"
  end

  get '/figures/:id' do
    @figure = Figure.find params[:id]

    erb :"figures/show"
  end

  post '/figures' do
    # binding.pry
    figure = Figure.create params[:figure] #new_figure with or without titles and landmarks
    figure.landmarks << Landmark.create(params[:landmark]) if !params[:landmark].empty? #add new landmark
    figure.titles << Title.create(params[:title]) if !params[:title].empty? #add new title

    redirect to "/figures/#{figure.id}"
  end
end
