class NotesController < ApplicationController
  before_action :set_note, only: [:update, :destroy]
  before_action :set_goal, only: [:create, :destroy]

  def create
    @goal.notes.create!(note_params)
    redirect_to_goal
  end

  def update
    redirect_to_goal
  end

  def destroy
    @note.destroy!
    redirect_to_goal
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def set_goal
    @goal = Goal.find(params[:goal_id])
  end

  def note_params
    params.require(:note).permit(:body)
  end

  def redirect_to_goal
    redirect_to @goal
  end
end
