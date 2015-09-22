class DomitoryController < ApplicationController
   before_filter :authenticate_domitory!
    def index
        @a = Time.new  
       # @username = Domitory.where(:id => session["id"]).take.username
       
    end
    
    def myinfo
       
    end
    
    def croom_apply
    
    end
    
    def croom
      post = Croomdb.new
      post.domitory_id  = params[:domitory_id]
      post.student_number = params[:student_number]
      post.apply_date = params[:apply_date]
      post.apply = 1
      post.save
      
      redirect_to '/domitory/croom_apply'
    end
    
    def sleepout_apply
       # @room_number = Domitory.find(session["student_number"]).room_number
       
    end
    def sleepout
        post = Sleepoutdb.new
        post.student_number = params[:student_number]
        post.apply_start_date = params[:apply_start_date]
        post.apply_end_date = params[:apply_end_date]
        post.apply = 1
        post.save
        
        redirect_to '/domitory/sleepout_apply'
    end
    
    def show
        
    end
    def admin
        @domitory = Domitory.all
        @crooms = Croomdb.all
        @sleepoutApply = Sleepoutdb.all
    end

end