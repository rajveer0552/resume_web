class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :contact_number
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
