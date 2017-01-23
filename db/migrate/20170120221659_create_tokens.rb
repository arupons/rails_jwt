class CreateTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :tokens do |t|
      t.string :token
      t.references :user, foreign_key: true
      t.string :aplicacion
      t.string :detalle
      t.string :estado

      t.timestamps
    end
  end
end
