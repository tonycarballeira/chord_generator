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

    # @your_chord = Chord.from_notes(key[:nptes].sort)

    # Chord.find(chord)
    Chord.all.each do |key|
      if key[:notes].sort == chord
        @your_chord = key[:name]
      end
    end
     
     if @your_chord == nil
        flash[:success] = "Your chord was not a Major, Minor, Diminished, or Augmented chord. Try another or click generate chord."
        redirect_to chords_search_path 
     else
        session[:progression] = [@your_chord]
        redirect_to chord_path(@your_chord)
     end
    
    #     session[:progression] = [@your_chord]
    #     redirect_to chord_path(@your_chord)
        

    #   #   session[:progression] = [@your_chord]
    #   #   redirect_to chord_path(@your_chord)
    #   # elsif key[:notes].sort != chord
    #   #      redirect_to chords_search_path
    #        # return
    #   end
    # end
       
  
    
  end

  def generate
    key = Chord.all.sample
    @your_chord = key[:name]
    session[:progression] = [@your_chord]
    redirect_to chord_path(@your_chord)
  end

  def remove
    session[:progression].pop
    if session[:progression] == []
      redirect_to chords_search_path
    else
    @your_chord = session[:progression].last
    redirect_to chord_path(@your_chord)
  end
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


