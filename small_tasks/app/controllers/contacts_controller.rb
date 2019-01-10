class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(name: params[:contact][:name], email: params[:contact][:email], content: params[:contact][:content])
   if @contact.save
    redirect_to new_contact_path
  else
    render 'new'
  end
  end
  
  
  
  # private
  # def blog_params
  #   params.require(:contact).permit(:name, :email, :content)
  # end
end
