<% module_namespacing do -%>
class <%= controller_class_name %>Controller < ApplicationController
  before_filter :find_<%= singular_table_name %>!
  respond_to :html, :json

  # GET <%= route_url %>
  # GET <%= route_url %>.json
  def index
    @<%= plural_table_name %> = <%= class_name %>.all
    respond_with @<%= plural_table_name %>
  end

  # GET <%= route_url %>/1
  # GET <%= route_url %>/1.json
  def show
    respond_with @<%= singular_table_name %>
  end

  # GET <%= route_url %>/new
  # GET <%= route_url %>/new.json
  def new
    @<%= singular_table_name %> = <%= orm_class.build(class_name) %>
    respond_with @<%= singular_table_name %>
  end

  # GET <%= route_url %>/1/edit
  def edit
    respond_with @<%= singular_table_name %>
  end

  # POST <%= route_url %>
  # POST <%= route_url %>.json
  def create
    @<%= singular_table_name %> = <%= orm_class.build(class_name, "params[:#{singular_table_name}]") %>
    flash[:notice] = t('controllers.<%= plural_table_name %>.<%= singular_table_name %>_was_successfully_created') if @<%= orm_instance.save %>
    respond_with @<%= singular_table_name %>
  end

  # PUT <%= route_url %>/1
  # PUT <%= route_url %>/1.json
  def update
    flash[:notice] = t('controllers.<%= plural_table_name %>.<%= singular_table_name %>_was_successfully_updated') if @<%= orm_instance.update_attributes("params[:#{singular_table_name}]") %>
    respond_with @<%= singular_table_name %>
  end

  # DELETE <%= route_url %>/1
  # DELETE <%= route_url %>/1.json
  def destroy
    @<%= orm_instance.destroy %>
    respond_with @<%= singular_table_name %>
  end

  private

  def find_<%= singular_table_name %>!
    @<%= singular_table_name %> = <%= orm_class.find(class_name, 'params[:id]') %> if params[:id]
  end
end
<% end -%>
