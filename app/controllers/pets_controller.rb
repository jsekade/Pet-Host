class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  # GET /pets
  # GET /pets.json
  def index
    set_user
    @pets = @user.pets.all
  end

  # GET /pets/1
  # GET /pets/1.json
  def show
    set_user
  end

  # GET /pets/new
  def new
    set_user
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
    set_user
  end

  # POST /pets
  # POST /pets.json
  def create
    set_user
    @pet = Pet.new(
      :name => params[:pet][:name],
      :type_pet => params[:pet][:type_pet],
      :breed => params[:pet][:breed],
      :age => params[:pet][:age],
      :description_pet => params[:pet][:description_pet],
      :care => params[:pet][:care],
      :avatar => params[:pet][:avatar],
      :user_id => params[:user_id]

      )
    
    redirect_to user_path(@user)
    #redirect_to user_pet_path(@pet.user, @pet)
   

    #respond_to do |format|
     # if @pet.save
      #  format.html { redirect_to @pet, notice: 'Pet was successfully created.' }
      #  format.json { render :show, status: :created, location: @pet }
      #else
       # format.html { render :new }
        #format.json { render json: @pet.errors, status: :unprocessable_entity }
      #end
    #end
  end

  # PATCH/PUT /pets/1
  # PATCH/PUT /pets/1.json
  def update
    pet = Pet.update(
      :name => params[:pet][:name],
      :type_pet => params[:pet][:type_pet],
      :breed => params[:pet][:breed],
      :age => params[:pet][:age],
      :description_pet => params[:pet][:description_pet],
      :care => params[:pet][:care],
      :avatar => params[:pet][:avatar],
      :user_id => params[:user_id]
      )

    @pet.save
    
    redirect_to user_pet_path(@pet.user, @pet)


    #respond_to do |format|
    #  if @pet.update(pet_params)
    #    format.html { redirect_to @pet, notice: 'Pet was successfully updated.' }
    #    format.json { render :show, status: :ok, location: @pet }
    #  else
    #    format.html { render :edit }
    #    format.json { render json: @pet.errors, status: :unprocessable_entity }
    #  end
    #end
  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to pets_url, notice: 'Pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    def set_user
      @user = User.find_by(id: params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
   #def pet_params
      
   #  params.require(:pet).permit(:name, :type_pet, :breed, :age, :description_pet, :care, :user_id)
   #end
end
