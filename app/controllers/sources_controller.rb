class SourcesController < ApplicationController
	def show
    @source = Source.find(params[:id])
		
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @game }
    end
	end
  def create
  	@source = Source.new(params[:source])
  	@source.user = current_user
  	@source.save
  	
  	respond_to do |format|
      if @source.save
        format.html { redirect_to(@source, :notice => 'The submission was successfully created.') }
        format.xml  { render :xml => @source, :status => :created, :location => @game }
      else
        format.html { redirect_to(@source.game, :alert => 'Couldnt add the source') }
        format.xml  { render :xml => @source.errors, :status => :unprocessable_entity }
      end
    end
  end
end
