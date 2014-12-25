class TopicsController < ApplicationController
  def new
    @topic = Topic.new
    @devpro = Devpro.where(params[:devpro_id]).first
  end
  
  def create
    topic = Topic.create(devpro_id: params[:topic][:devpro_id], name: params[:topic][:name])
    material = Material.create(topic_id: topic.id, summary: params[:material][:summary])
    for content_num in 1..5
      content_index_params = params[:content]["#{content_num}"]
      if content_index_params.nil?
        break
      end
      file = content_index_params[:content]
      original_filename = file.original_filename
      created_filename = Time.now.strftime("%y%m%d_%H%M%S_#{original_filename}")
      File.open("uploads/contents/#{created_filename}", "wb"){|f| f.write(file.read)}
      Content.create(material_id: material.id, content:"/uploads/contents/#{created_filename}")
    end
    redirect_to material_path(material.id) 
  end
end
