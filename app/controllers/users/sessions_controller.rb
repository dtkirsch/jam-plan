class Users::SessionsController < Devise::SessionsController
  # This manages to handle the jam form fields from both sign-in and new registration
  # Thus no need to duplicate in the RegistrationsController
  prepend_after_filter :add_jams, :only => [:create]
  def add_jams
    self.resource.jams << (Jam.find(params[:user]["jam_ids"] - [""] ) - self.resource.jams )
  end
  
end
