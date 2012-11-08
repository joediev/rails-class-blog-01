class Audit < ActiveRecord::Base
  attr_accessible :auditable_id, :auditable_type, :audited_changes

  belongs_to :auditable,
    :polymorphic => true
  serialize :audited_changes

end
