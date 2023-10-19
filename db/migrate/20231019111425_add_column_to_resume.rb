class AddColumnToResume < ActiveRecord::Migration[5.2]
  def change
    add_column :resumes, :attachment, :string
    add_column :resumes, :image, :string
  end
end
