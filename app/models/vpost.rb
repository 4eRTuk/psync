class Vpost < ActiveRecord::Base
	default_scope order('created_at DESC')
	validates :title, presence: true, length: { maximum: 32, minimum: 1 }
	validates :content, presence: true, length: { maximum: 4096, minimum: 1 }
	validates :vlink, presence: true, length: { maximum: 2048 }
end
