class CinemasController < ApplicationController
  # GET /cinemas
  # GET /cinemas.xml
  def index
    @cinemas = Cinema.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cinemas }
    end
  end

  # GET /cinemas/1
  # GET /cinemas/1.xml
  def show
    @cinema = Cinema.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cinema }
    end
  end

  # GET /cinemas/new
  # GET /cinemas/new.xml
  def new
    @cinema = Cinema.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cinema }
    end
  end

  # GET /cinemas/1/edit
  def edit
    @cinema = Cinema.find(params[:id])
  end

  # POST /cinemas
  # POST /cinemas.xml
  def create
    @cinema = Cinema.new(params[:cinema])

    respond_to do |format|
      if @cinema.save
        format.html { redirect_to(@cinema, :notice => 'Cinema was successfully created.') }
        format.xml  { render :xml => @cinema, :status => :created, :location => @cinema }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cinema.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cinemas/1
  # PUT /cinemas/1.xml
  def update
    @cinema = Cinema.find(params[:id])

    respond_to do |format|
      if @cinema.update_attributes(params[:cinema])
        format.html { redirect_to(@cinema, :notice => 'Cinema was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cinema.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cinemas/1
  # DELETE /cinemas/1.xml
  def destroy
    @cinema = Cinema.find(params[:id])
    @cinema.destroy

    respond_to do |format|
      format.html { redirect_to(cinemas_url) }
      format.xml  { head :ok }
    end
  end
end
