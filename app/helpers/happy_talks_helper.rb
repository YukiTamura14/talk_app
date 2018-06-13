module HappyTalksHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_happy_talks_path
    elsif action_name == 'edit'
      happy_talk_path
    end
  end
end
