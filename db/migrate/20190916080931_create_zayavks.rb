class CreateZayavks < ActiveRecord::Migration[6.0]
  def change
    create_table :zayavks do |t|
      t.string :podr
      t.string :fio
      t.string :telephone
      t.string :dolzh
      t.string :servers
      t.string :infosyst
      t.string :soglos

      t.timestamps
    end
  end
end
