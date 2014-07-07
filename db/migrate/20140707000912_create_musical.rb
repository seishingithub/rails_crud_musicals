class CreateMusical < ActiveRecord::Migration
  def change
    create_table :musicals do |t|
      t.string :name
      t.string :actor
    end
  end
end
