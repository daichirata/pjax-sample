class ExamplesController < ApplicationController
  def index
    @examples = Example.all

    render_to_pjax :index
  end

  def show
    @example = Example.find(params[:id])

    render_to_pjax :show
  end
end
