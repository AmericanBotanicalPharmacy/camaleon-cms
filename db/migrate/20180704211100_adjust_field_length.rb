class AdjustFieldLength < CamaManager.migration_class
  def change
    db_prefix = PluginRoutes.static_system_info["db_prefix"]

    change_column "#{db_prefix}posts", :title, :text
    if index_exists? "#{db_prefix}posts", :slug
      remove_index "#{db_prefix}posts", :slug
    end
    change_column "#{db_prefix}posts", :slug, :text
    add_index "#{db_prefix}posts", :slug, length: 250
    change_column "#{db_prefix}term_taxonomy", :name, :text
  end
end
