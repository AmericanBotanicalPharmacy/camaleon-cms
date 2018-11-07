class AddCacheControlToCamaMedia < ActiveRecord::Migration[5.2]
  def change
    add_column :cama_media, :cache_control, :string
  end
end
