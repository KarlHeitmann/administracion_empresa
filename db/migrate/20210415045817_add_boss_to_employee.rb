class AddBossToEmployee < ActiveRecord::Migration[6.1]
  def change
    # add_reference :tweets, :retweet, foreign_key: {to_table: :tweets}
    add_reference :employees, :boss, foreign_key: {to_table: :employees}

  end
end
