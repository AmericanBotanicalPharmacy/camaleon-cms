class AddGroupToCustomFieldValues < CamaManager.migration_class
  def change
    add_column "#{PluginRoutes.static_system_info["db_prefix"]}custom_fields_relationships", :group_number, :integer, default: 0 unless column_exists?(CamaleonCms::CustomFieldsRelationship.table_name, :group_number)
  end
end
