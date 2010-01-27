class SteppingController < ApplicationController
  def view_commit
  
    # TODO: this part is lame, fix it
    if RAILS_ROOT == "/Users/luke/Sites/gitstepper"
      @root_url = "localhost:3000"
    else
      @root_url = "something.heroku.com"
    end
    
    a = LgCommits.commit_hashes
    
    if params[:commit_hash].nil?
      @current_commit_hash = a[0]
    else
      @current_commit_hash = params[:commit_hash]
    end
    
  end
  
  def controls
    
    a = LgCommits.commit_hashes
    
    if params[:commit_hash].nil?
      @prev_commit_hash = nil
      @next_commit_hash = a[1]  
    else
      if !a.include?(params[:commit_hash])
        raise "that's not a proper commit hash!"
      else
        if a[0] == params[:commit_hash]
          @prev_commit_hash = nil
          @next_commit_hash = a[a.index(params[:commit_hash]) + 1]
        elsif a[-1] == params[:commit_hash]
          @prev_commit_hash = a[a.index(params[:commit_hash]) - 1]
          @next_commit_hash = nil
        else
          @prev_commit_hash = a[a.index(params[:commit_hash]) - 1]
          @next_commit_hash = a[a.index(params[:commit_hash]) + 1]
        end
        
      end
      
    end
  end
  
end
