class NotesController < ApplicationController
  before_action :set_note, only: [:edit, :update, :destroy]
  before_action :set_goal, only: [:new, :create, :edit, :update, :destroy]

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      @goal.notes.append(@note)
      redirect_to @goal
    else
      render 'new'
    end
  end

  def update
    if @note.update(note_params)
      redirect_to_goal
    else
      render 'edit'
    end
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
    permitted = params.require(:note).permit(:body)
    permitted.merge(goal_id: params[:goal_id])
  end

  def redirect_to_goal
    redirect_to @goal
  end
end
