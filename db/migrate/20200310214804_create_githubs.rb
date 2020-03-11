class CreateGithubs < ActiveRecord::Migration[5.2]
  def change
    create_table :githubs do |t|

      t.timestamps
    end
  end
end
