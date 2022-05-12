class PostsService
    class << self 
        def index
            PostsRepository.index
         end
     
         def new
           PostsRepository.new
         end
         def createPost(post)
           PostsRepository.createPost(post)
         end
     
         def update(id,post_form)
           @post = PostsRepository.findById(id)
           isUpdate = PostsRepository.update(@post,post_form)
         end
     
         def delete(id)
           @post = PostsRepository.findById(id)
           PostsRepository.delete(@post)
         end
    end
end