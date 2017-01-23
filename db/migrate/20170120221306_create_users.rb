class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.references :person, foreign_key: true
      t.string :login
      t.string :password_digest
      t.string :token
      t.string :estado

      t.timestamps
    end
  end
end
