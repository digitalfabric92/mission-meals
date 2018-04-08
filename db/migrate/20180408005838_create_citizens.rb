class CreateCitizens < ActiveRecord::Migration[5.1]
  def change
    create_table :citizens do |t|
      t.string :name

      t.timestamps
    end
  end
end
