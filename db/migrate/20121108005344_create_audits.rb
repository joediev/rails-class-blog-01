class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.integer :auditable_id
      t.string :auditable_type
      t.text :audited_changes

      t.timestamps
    end
  end
end
