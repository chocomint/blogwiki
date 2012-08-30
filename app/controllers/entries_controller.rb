class EntriesController < ApplicationController
  def index
    @entry = Entry.new
    @entries = Entry.newly.limit(10)
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
    @entry.save
    redirect_to entries_path
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.body = params[:entry][:body]
    @entry.save
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to entries_path
  end
end
