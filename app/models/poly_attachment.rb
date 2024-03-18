class PolyAttachment < ApplicationRecord
    belongs_to :attachable, polymorphic: true
end
