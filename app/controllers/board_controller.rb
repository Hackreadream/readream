class BoardController < ApplicationController
  include ApplicationHelper
  
  def list
      url = '/listSpecificPageWork?current_page=1'
      redirect_to url
  end

  def newdream
    
  end

  def view
  end
  def DoWriteBoard
    
  @rowData = DreamRow.new(dreamt: params[:dreamt], dreamer: params[:dreamer], dreamc: params[:dreamc], hits:0)
  @rowData.save
  redirect_to "/community"
  end
  def listSpecificPageWork
     @current_page = params[:current_page]
     @totalCnt = DreamRow.all.count
     @boardList = DreamRow.find_by_sql ["select ID,DREAMT,DREAMER, CREATED_AT, DREAMC,HITS \ from DREAM_ROWS ORDER BY id desc limit %s offset %s", rowsPerPage, @current_page.to_i ==1 ? 0 : 9*(@current_page.to_i-1) ]
     @totalPageList = getTotalPageList(@totalCnt, rowsPerPage)
  
  end
  def viewWork
        @id = params[:id]
        @current_page = params[:current_page]
        @searchStr= params[:searchStr]
        DreamRow.increment_counter(:hits, @id ) # hits increase
        @rowData = DreamRow.find(params[:id])
  end
  def delete
    @id = params[:id]
    @current_page = params[:current_page]
    @rowData=DreamRow.find(params[:id])
    DreamRow.destroy(params[:id])
    redirect_to "/community"
  end
  def edit
  @id = params[:id]
  @current_page = params[:current_page]
  @searchStr=params[:searchStr]
  @rowData=DreamRow.find(params[:id])
 
  end
  def update
  @id=params[:id]
  @current_page = params[:current_page]
  @searchStr=params[:searchStr]
  @rowData=DreamRow.find(params[:id])
  @rowData.dreamt=params[:dreamt]
  @rowData.dreamer=params[:dreamer]
  @rowData.dreamc=params[:dreamc]
  @rowData.save
  url=params[:url]
  redirect_to url
  end
  
  def addcomment
  
  Note.create(dream_row_id: params[:dream_row_id], dreamteller: params[:dreamteller], memo: params[:memo])
url=params[:url]
  redirect_to url
  end

end