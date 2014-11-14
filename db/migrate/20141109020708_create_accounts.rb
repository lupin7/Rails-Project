class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :secret_question
      t.string :secret_answer

      t.timestamps
    end
  end
end
