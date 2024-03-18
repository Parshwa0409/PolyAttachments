class User < ApplicationRecord
    has_many :poly_attachments, as: :attachable
end
