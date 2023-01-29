class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :priority
      t.string :description
      t.string :supply1
      t.string :supply2
      t.string :supply3
      t.string :supply4
      t.string :supply5
      t.string :supply6
      t.string :supply7
      t.string :supply8
      t.string :supply9
      t.string :supply10
      t.integer :estimate
      t.string :start
      t.string :completion

      t.timestamps
    end
  end
end
