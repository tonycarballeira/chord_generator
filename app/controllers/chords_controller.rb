class ChordsController < ApplicationController
  def index
  	@chords = Chord.all
  end

  def search
  	@chords = Chord.all

  end

  def do_search
    # render plain: params\

    
    chord_array = []

    chord_array << params["note1"].upcase 
    chord_array << params["note2"].upcase
    chord_array << params["note3"].upcase

    

    chord = chord_array.sort
     
    Chord.all.each do |key|
      if key[:notes].sort == chord
      @your_chord = key[:name]
      

    end
  end
  session[:progression] = [@your_chord]
  redirect_to chord_path(@your_chord)
    
  end


  def show
  	Chord.all.each do |key|
	  		if key[:name] == params["name"]
				@your_chord = key[:name]
				@suggestion = key[:following_chords].sample
			end
		end

	end
  
  def add

    if session[:progression] == nil
      session[:progression] = []
    end
    
    session[:progression] << params["chord"]
    redirect_to chord_path(params["chord"])


    end

    def reset
      session[:progression] = nil
      redirect_to chords_search_path
    end
  
end

# render plain: params.to_s


