class CreateFactibilidadForms < ActiveRecord::Migration[6.1]
  def change
    create_table :factibilidad_forms do |t|
      t.string :titulo
      t.string :estado
      t.string :archivo

      t.timestamps
    end
  end
end
