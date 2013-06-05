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

describe JamsUsersController do

  # This should return the minimal set of attributes required to create a valid
  # JamsUser. As you add validations to JamsUser, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "jam" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # JamsUsersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all jams_users as @jams_users" do
      jams_user = JamsUser.create! valid_attributes
      get :index, {}, valid_session
      assigns(:jams_users).should eq([jams_user])
    end
  end

  describe "GET show" do
    it "assigns the requested jams_user as @jams_user" do
      jams_user = JamsUser.create! valid_attributes
      get :show, {:id => jams_user.to_param}, valid_session
      assigns(:jams_user).should eq(jams_user)
    end
  end

  describe "GET new" do
    it "assigns a new jams_user as @jams_user" do
      get :new, {}, valid_session
      assigns(:jams_user).should be_a_new(JamsUser)
    end
  end

  describe "GET edit" do
    it "assigns the requested jams_user as @jams_user" do
      jams_user = JamsUser.create! valid_attributes
      get :edit, {:id => jams_user.to_param}, valid_session
      assigns(:jams_user).should eq(jams_user)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new JamsUser" do
        expect {
          post :create, {:jams_user => valid_attributes}, valid_session
        }.to change(JamsUser, :count).by(1)
      end

      it "assigns a newly created jams_user as @jams_user" do
        post :create, {:jams_user => valid_attributes}, valid_session
        assigns(:jams_user).should be_a(JamsUser)
        assigns(:jams_user).should be_persisted
      end

      it "redirects to the created jams_user" do
        post :create, {:jams_user => valid_attributes}, valid_session
        response.should redirect_to(JamsUser.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved jams_user as @jams_user" do
        # Trigger the behavior that occurs when invalid params are submitted
        JamsUser.any_instance.stub(:save).and_return(false)
        post :create, {:jams_user => { "jam" => "invalid value" }}, valid_session
        assigns(:jams_user).should be_a_new(JamsUser)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        JamsUser.any_instance.stub(:save).and_return(false)
        post :create, {:jams_user => { "jam" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested jams_user" do
        jams_user = JamsUser.create! valid_attributes
        # Assuming there are no other jams_users in the database, this
        # specifies that the JamsUser created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        JamsUser.any_instance.should_receive(:update_attributes).with({ "jam" => "" })
        put :update, {:id => jams_user.to_param, :jams_user => { "jam" => "" }}, valid_session
      end

      it "assigns the requested jams_user as @jams_user" do
        jams_user = JamsUser.create! valid_attributes
        put :update, {:id => jams_user.to_param, :jams_user => valid_attributes}, valid_session
        assigns(:jams_user).should eq(jams_user)
      end

      it "redirects to the jams_user" do
        jams_user = JamsUser.create! valid_attributes
        put :update, {:id => jams_user.to_param, :jams_user => valid_attributes}, valid_session
        response.should redirect_to(jams_user)
      end
    end

    describe "with invalid params" do
      it "assigns the jams_user as @jams_user" do
        jams_user = JamsUser.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JamsUser.any_instance.stub(:save).and_return(false)
        put :update, {:id => jams_user.to_param, :jams_user => { "jam" => "invalid value" }}, valid_session
        assigns(:jams_user).should eq(jams_user)
      end

      it "re-renders the 'edit' template" do
        jams_user = JamsUser.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JamsUser.any_instance.stub(:save).and_return(false)
        put :update, {:id => jams_user.to_param, :jams_user => { "jam" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested jams_user" do
      jams_user = JamsUser.create! valid_attributes
      expect {
        delete :destroy, {:id => jams_user.to_param}, valid_session
      }.to change(JamsUser, :count).by(-1)
    end

    it "redirects to the jams_users list" do
      jams_user = JamsUser.create! valid_attributes
      delete :destroy, {:id => jams_user.to_param}, valid_session
      response.should redirect_to(jams_users_url)
    end
  end

end