Spree::Admin::VariantsController.class_eval do
  
  def edit_multiple
    respond_with(collection) do |format|
      format.html
      format.json { render :json => json_data }
    end
  end
  
  def update_multiple
    params[:variants] ||= {}
    parent.variants.map do |variant|
      if params[:variants][vid = variant.id.to_s].is_a?(Hash)
        variant.update_attributes(params[:variants][vid])
      end
    end
    
    flash[:notice] = flash_message_for(parent, :successfully_updated)
    respond_with(collection) do |format|
      format.html { redirect_to location_after_save }
      format.js   { render :layout => false }
    end
  end
  
end