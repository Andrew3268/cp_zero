class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @pagy, @posts = pagy(Post.all.order("created_at DESC"), items: 100)
    # @posts_random_over_half = Post.order("RANDOM()").limit(10)
    # @most_hit = Post.most_hit(1.day.ago, 10)
  end

  # GET /posts/1 or /posts/1.json
  def show
    @post.punch(request)

  end

  def hashtags
    tag = Tag.find_by(name: params[:name])
    @pagy, @posts = pagy(tag.posts, itmes: 100)

  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :body, :image, :link, :is_price, :was_price, :pct, :hashtag, :ratings, :reviews, :categories, :ratings_codes,
                                   :eva_10, :eva_11, :eva_12, :eva_20, :eva_21, :eva_22, :eva_30, :eva_31, :eva_32, :eva_40, :eva_41, :eva_42, :eva_title_01,
                                   :eva_title_02, :eva_title_03, :eva_title_04, :doughnut_01, :doughnut_02, :doughnut_03, :doughnut_04, :doughnut_05, :rocket,
                                   :info_01, :info_02, :info_03, :info_04, :info_05 )
                                   
    end
end


