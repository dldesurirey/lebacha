class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.text :content
      t.date :date

      t.timestamps
    end
  end
end
