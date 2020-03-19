class GossipsTags < ActiveRecord::Migration[6.0]
  def change
    create_table :GossipsTags, id: false do |t|
      t.belongs_to :gossip, index: true
      t.belongs_to :tag, index: true
    end
    
  end
end
