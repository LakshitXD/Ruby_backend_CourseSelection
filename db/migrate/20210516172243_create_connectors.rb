class CreateConnectors < ActiveRecord::Migration[6.1]
  def change
    create_table :connectors do |t|
      t.integer :user_id
      t.integer :course_id

      t.timestamps
    end
  end
end
