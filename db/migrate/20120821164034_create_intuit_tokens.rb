class CreateIntuitTokens < ActiveRecord::Migration
  def change
    create_table :intuit_tokens do |t|

      t.timestamps
    end
  end
end
