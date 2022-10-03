class SupportRequest < ApplicationRecord
  belongs_to :orders, optional: true

  has_rich_text :response

end
