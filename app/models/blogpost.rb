class Blogpost < ActiveRecord::Base
  def myupdate(params)
    if params[:category]
        cleaned_up_category = params[:category].join(' ')
    end
    update params
    self.category = cleaned_up_category
    self.save
  end
end
