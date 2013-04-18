require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UserprofilesController do

  # This should return the minimal set of attributes required to create a valid
  # Userprofile. As you add validations to Userprofile, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "firstname" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UserprofilesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all userprofiles as @userprofiles" do
      userprofile = Userprofile.create! valid_attributes
      get :index, {}, valid_session
      assigns(:userprofiles).should eq([userprofile])
    end
  end

  describe "GET show" do
    it "assigns the requested userprofile as @userprofile" do
      userprofile = Userprofile.create! valid_attributes
      get :show, {:id => userprofile.to_param}, valid_session
      assigns(:userprofile).should eq(userprofile)
    end
  end

  describe "GET new" do
    it "assigns a new userprofile as @userprofile" do
      get :new, {}, valid_session
      assigns(:userprofile).should be_a_new(Userprofile)
    end
  end

  describe "GET edit" do
    it "assigns the requested userprofile as @userprofile" do
      userprofile = Userprofile.create! valid_attributes
      get :edit, {:id => userprofile.to_param}, valid_session
      assigns(:userprofile).should eq(userprofile)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Userprofile" do
        expect {
          post :create, {:userprofile => valid_attributes}, valid_session
        }.to change(Userprofile, :count).by(1)
      end

      it "assigns a newly created userprofile as @userprofile" do
        post :create, {:userprofile => valid_attributes}, valid_session
        assigns(:userprofile).should be_a(Userprofile)
        assigns(:userprofile).should be_persisted
      end

      it "redirects to the created userprofile" do
        post :create, {:userprofile => valid_attributes}, valid_session
        response.should redirect_to(Userprofile.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved userprofile as @userprofile" do
        # Trigger the behavior that occurs when invalid params are submitted
        Userprofile.any_instance.stub(:save).and_return(false)
        post :create, {:userprofile => { "firstname" => "invalid value" }}, valid_session
        assigns(:userprofile).should be_a_new(Userprofile)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Userprofile.any_instance.stub(:save).and_return(false)
        post :create, {:userprofile => { "firstname" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested userprofile" do
        userprofile = Userprofile.create! valid_attributes
        # Assuming there are no other userprofiles in the database, this
        # specifies that the Userprofile created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Userprofile.any_instance.should_receive(:update_attributes).with({ "firstname" => "MyString" })
        put :update, {:id => userprofile.to_param, :userprofile => { "firstname" => "MyString" }}, valid_session
      end

      it "assigns the requested userprofile as @userprofile" do
        userprofile = Userprofile.create! valid_attributes
        put :update, {:id => userprofile.to_param, :userprofile => valid_attributes}, valid_session
        assigns(:userprofile).should eq(userprofile)
      end

      it "redirects to the userprofile" do
        userprofile = Userprofile.create! valid_attributes
        put :update, {:id => userprofile.to_param, :userprofile => valid_attributes}, valid_session
        response.should redirect_to(userprofile)
      end
    end

    describe "with invalid params" do
      it "assigns the userprofile as @userprofile" do
        userprofile = Userprofile.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Userprofile.any_instance.stub(:save).and_return(false)
        put :update, {:id => userprofile.to_param, :userprofile => { "firstname" => "invalid value" }}, valid_session
        assigns(:userprofile).should eq(userprofile)
      end

      it "re-renders the 'edit' template" do
        userprofile = Userprofile.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Userprofile.any_instance.stub(:save).and_return(false)
        put :update, {:id => userprofile.to_param, :userprofile => { "firstname" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested userprofile" do
      userprofile = Userprofile.create! valid_attributes
      expect {
        delete :destroy, {:id => userprofile.to_param}, valid_session
      }.to change(Userprofile, :count).by(-1)
    end

    it "redirects to the userprofiles list" do
      userprofile = Userprofile.create! valid_attributes
      delete :destroy, {:id => userprofile.to_param}, valid_session
      response.should redirect_to(userprofiles_url)
    end
  end

end