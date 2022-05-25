class CreatePessos < ActiveRecord::Migration[5.2]
  def change
    create_table :pessos do |t|
      t.string :nome,null: false
      t.string :email, null: false
      t.date :idade, null: false

      t.timestamps
    end
  end
end
