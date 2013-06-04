class JamsUsersController < ApplicationController
  # GET /jams_users
  # GET /jams_users.json
  def index
    @jams_users = JamsUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jams_users }
    end
  end

  # GET /jams_users/1
  # GET /jams_users/1.json
  def show
    @jams_user = JamsUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jams_user }
    end
  end

  # GET /jams_users/new
  # GET /jams_users/new.json
  def new
    @jams_user = JamsUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jams_user }
    end
  end

  # GET /jams_users/1/edit
  def edit
    @jams_user = JamsUser.find(params[:id])
  end

  # POST /jams_users
  # POST /jams_users.json
  def create
#    @jams_user = JamsUser.new(:jam_id => params[:id], :user_id => current_user.id)
    @jam = Jam.find(params[:id])

    respond_to do |format|
#      if @jams_user.save
      begin
        current_user.jams << @jam
        format.html { redirect_to @jam, notice: 'Successfully added you to jam list' }
        format.json { render json: @jams_user, status: :created, location: @jams_user }
      rescue
        format.html { redirect_to @jam, notice: 'Error: unable to add you to the jam list'}
        format.json { render json: @jams_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jams_users/1
  # PUT /jams_users/1.json
  def update
    @jams_user = JamsUser.find(params[:id])

    respond_to do |format|
      if @jams_user.update_attributes(params[:jams_user])
        format.html { redirect_to @jams_user, notice: 'Jams user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jams_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jams_users/1
  # DELETE /jams_users/1.json
  def destroy
    @jam = Jam.find(params[:id])
    @jams_user = JamsUser.where(:jam_id => @jam.id, :user_id => current_user.id).first
    @jams_user.destroy

    respond_to do |format|
      format.html { redirect_to @jam, notice: 'You are no longer attending this jam' }
      format.json { head :no_content }
    end
  end
end
