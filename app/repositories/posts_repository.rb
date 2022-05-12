class PostsRepository
    class << self 
        def index
            @posts = Post.all
          end
     
          def new
            @post =Post.new
          end
         def createPost(post)
           @post =Post.new(post)
         end
     
         def findById(id)
           @post = Post.find(id)
         end
     
         def update(post,post_form)
           isUpdate = post.update(post_form)
         end
     
         def delete(post)
           post.destroy
         end
    end
end