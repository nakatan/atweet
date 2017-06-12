module AtweetsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_atweets_path
    elsif action_name == 'edit'
      atweet_path
    end
  end
end
