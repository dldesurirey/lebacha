class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.references :section, foreign_key: true
      t.string :text

      t.timestamps
    end
  end
end
