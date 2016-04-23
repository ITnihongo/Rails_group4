class PicCommentsController < ApplicationController
  before_action :set_pic_comment, only: [:show, :edit, :update, :destroy]

  # GET /pic_comments
  # GET /pic_comments.json
  def index
    @pic_comments = PicComment.all
  end

  # GET /pic_comments/1
  # GET /pic_comments/1.json
  def show
  end

  # GET /pic_comments/new
  def new
    @pic_comment = PicComment.new
  end

  # GET /pic_comments/1/edit
  def edit
  end

  # POST /pic_comments
  # POST /pic_comments.json
  def create
    @pic_comment = PicComment.new(pic_comment_params)
    @pic_comment.user_id = current_user.id
    respond_to do |format|
      if @pic_comment.save
        url = "/pics/" + @pic_comment.pic_id.to_s
        format.html { redirect_to url, notice: 'Pic comment was successfully created.' }
        format.json { render :show, status: :created, location: @pic_comment }
      else
        format.html { render :new }
        format.json { render json: @pic_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pic_comments/1
  # PATCH/PUT /pic_comments/1.json
  def update
    respond_to do |format|
      if @pic_comment.update(pic_comment_params)
        format.html { redirect_to @pic_comment, notice: 'Pic comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @pic_comment }
      else
        format.html { render :edit }
        format.json { render json: @pic_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pic_comments/1
  # DELETE /pic_comments/1.json
  def destroy
    @pic_comment.destroy
    respond_to do |format|
      format.html { redirect_to pic_comments_url, notice: 'Pic comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pic_comment
      @pic_comment = PicComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pic_comment_params
      params.require(:pic_comment).permit(:user_id, :pic_id, :commemt)
    end
end
