class FormsController < ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :destroy]

  # GET /forms
  # GET /forms.json
  def index
    @forms = Form.all
  end

  # GET /forms/1
  # GET /forms/1.json
  def show
  end

  # GET /forms/new
  def new
    @form = Form.new
  end

  # GET /forms/1/edit
  def edit
  end
  
  def form_params
    params.require(:form).permit!(:name, :user, :email, :address, :city, :zip, :busphone, :cell, :website,
      :taxID, :busID, :product, :orgtype, :numChairs, :numTables, :numbrellas, :numTents)
  end

  # POST /forms
  # POST /forms.json
  def create
    # Might want to figure out how to just call Form.new(form_params), was getting error with that approach initially
    if @form.nil?
      @form = Form.new()
    end
    @form.name = params[:form][:name]
    @form.user = params[:form][:user]
    @form.email = params[:form][:email]
    @form.address = params[:form][:address]
    @form.city = params[:form][:city]
    @form.zip = params[:form][:zip]
    @form.busphone = params[:form][:busphone]
    @form.cell = params[:form][:cell]
    @form.website = params[:form][:website]
    @form.taxID = params[:form][:taxID]
    @form.busID = params[:form][:busID]
    @form.product = params[:form][:product]
    @form.orgtype = params[:orgtype]
    @form.numChairs = params[:numChairs]
    @form.numTables = params[:numTables]
    @form.numbrellas = params[:numbrellas]
    @form.numTents = params[:numTents]
    
    generate_csv(@form)
    
    respond_to do |format|
      if @form.save
        format.html { redirect_to @form, notice: 'Form was successfully created.' }
        format.json { render :submit, status: :created, location: @form }
      else
        format.html { render :new }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/1
  # PATCH/PUT /forms/1.json
  def update
    respond_to do |format|
      if @form.update(form_params)
        format.html { redirect_to @form, notice: 'Form was successfully updated.' }
        format.json { render :show, status: :ok, location: @form }
      else
        format.html { render :edit }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def nonprofit
    @form = Form.new
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form.destroy
    respond_to do |format|
      format.html { redirect_to forms_url, notice: 'Form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def generate_csv(form)
    # TO BE IMPLEMENTED
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form
      @form = Form.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_params
      params.fetch(:form, {})
    end
    
end
