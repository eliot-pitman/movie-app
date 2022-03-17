class DeleteEnglish < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :english, :string
    add_column :movies, :english, :boolean
  end
end
