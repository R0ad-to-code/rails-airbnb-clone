class UserOwnerStatusDefault < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :owner?, false
  end
end
