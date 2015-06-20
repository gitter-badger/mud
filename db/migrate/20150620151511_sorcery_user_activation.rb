class SorceryUserActivation < ActiveRecord::Migration
  def change
    add_column :people, :activation_state, :string, :default => nil
    add_column :people, :activation_token, :string, :default => nil
    add_column :people, :activation_token_expires_at, :datetime, :default => nil

    add_index :people, :activation_token
  end
end