class ChompersController < ApplicationController
  
  def index
      if params[:input_text]
        text = params[:input_text]
        @uncleaned_text = text.gsub(/[ ]{2,}/, " [EXTRA SPACE] ")
        @cleaned_text = text.split(".").collect(&:strip).join(". ")
      end  
       respond_to do |format|
          format.html
        end
  end
  
end
