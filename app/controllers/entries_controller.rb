# vim:fileencoding=UTF-8
class EntriesController < ApplicationController
  def index
    @entry = Entry.new
    @entries = Entry.page(params[:page]).per(params[:per]).newly
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def create
    @entry = Entry.new
    @entry.body = params[:entry][:body]
    if @entry.save then
      flash[:notice] = '投稿しました'
      redirect_to entries_path
    else
      @entries = Entry.newly.limit(10)
      render :index
    end
  end

  def update
    @entry = Entry.find(params[:id])
    if params[:entry][:more] then
      @entry.body = [@entry.body, params[:entry][:more]].join("\n")
    else
      @entry.body = params[:entry][:body]
    end
    if @entry.save then
      flash[:notice] = params[:entry][:more] ? '追記しました' : '更新しました'
      redirect_to entry_path(@entry)
    else
      render :edit
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    if @entry.destroy then
      flash[:notice] = '削除しました'
    else
      flash[:level]  = 'error'
      flash[:notice] = '削除に失敗しました'
    end
    redirect_to entries_path
  end
end
