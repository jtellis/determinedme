class NotesController < ApplicationController
  def create() end

  def update() end

  def delete() end

  private

  def note_params
    params.require(:note).permit(:body)
  end
end
