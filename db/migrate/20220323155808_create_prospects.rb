class CreateProspects < ActiveRecord::Migration[6.1]
  def change
    create_table :prospects do |t|
      t.string :name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
