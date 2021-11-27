class CreateProspectos < ActiveRecord::Migration[6.0]
  def change
    create_table :prospectos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.integer :status

      t.timestamps
    end
  end
end
