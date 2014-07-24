class ContentsController < ApplicationController
  before_action :set_content, only: [:update, :destroy]

  # POST /contents
  # POST /contents.json
  def create
    @content = Content.new(content_params)

    respond_to do |format|
      if @content.save
        format.html { redirect_to @content.book, notice: 'Content was successfully created.' }
        format.json { render :show, status: :created, location: @content.book }
      else
        format.html { redirect_to @content.book }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contents/1
  # PATCH/PUT /contents/1.json
  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to @content.book, notice: 'Content was successfully updated.' }
        format.json { render :show, status: :ok, location: @content.book }
      else
        format.html { redirect_to @content.book }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    book = @content.book
    @content.destroy
    respond_to do |format|
      format.html { redirect_to book_url(book), notice: 'Content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:content_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_params
      params.require(:content).permit(:content, :book_id,
                                      sections_attributes: [:title, :content_id, :_destroy,
                                                           subsections_attributes: [:title, :section_id, :_destroy]])
    end
end
