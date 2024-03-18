class CreatePolyAttachments < ActiveRecord::Migration[7.1]
  def change
    create_table :poly_attachments do |t|
      t.string :file_name
      t.references :attachable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
