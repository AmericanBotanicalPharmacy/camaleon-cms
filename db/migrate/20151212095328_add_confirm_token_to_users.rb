class AddConfirmTokenToUsers < CamaManager.migration_class
  def change
    add_column CamaleonCms::User.table_name, :confirm_email_token, :string, default: nil unless column_exists?(CamaleonCms::User.table_name, :confirm_email_token)
    add_column CamaleonCms::User.table_name, :confirm_email_sent_at, :datetime, default: nil unless column_exists?(CamaleonCms::User.table_name, :confirm_email_sent_at)
    add_column CamaleonCms::User.table_name, :is_valid_email, :boolean, default: true unless column_exists?(CamaleonCms::User.table_name, :is_valid_email)
  end
end
