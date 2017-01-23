class CreateEnterprises < ActiveRecord::Migration[5.0]
  def change
    create_table :enterprises do |t|
      t.references :enterprise, foreign_key: true
      t.string :nombre
      t.string :direccion
      t.string :representante
      t.string :url
      t.string :telefono
      t.string :movil
      t.string :email
      t.string :logo
      t.string :estado
      t.json :json
      
      t.timestamps
    end
  end
end
