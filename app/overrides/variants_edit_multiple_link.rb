Deface::Override.new(
  :virtual_path => "admin/variants/index",
  :name => "variants_edit_multiple_link",
  :insert_bottom => "#new_var_link",
  :text => "&nbsp;|&nbsp;<%= link_to t('edit_multiple_variants'), edit_multiple_admin_product_variants_url(@product) %>",
  :disabled => false)