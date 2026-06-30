class PlansController < ApplicationController
  # 予定一覧画面
  def index
    @plans = Plan.all
  end

  # 予定新規追加画面
  def new
    @plan = Plan.new
  end

  # 予定DB登録処理
  def create
    @plan = Plan.new(plan_params)

    if @plan.save
      redirect_to @plan, notice: "予定を追加しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # 予定詳細画面
  def show
    @plan = Plan.find(params[:id])
  end

  # 予定編集画面
  def edit
  end

  # 予定更新処理
  def update
  end

  # 予定削除処理
  def destroy
  end

  private

  # 許可するキーだけを受け取る
  def plan_params
    params.require(:plan).permit(:name, :start, :end, :all_day, :memo)
  end
  
end
