# <table>
#     <thead>
#      <tr>
#        <th>Title</th>
#        <th>Description</th>
#        <th colspan="3">Action</th>
#      </tr>
#     </thead>

#     <tbody>
#       <% @articles.each do |article| %>
#       <tr>
#       <td><%= article.title %></td>
#       <td><%= article.description %></td>
#       <td><%= link_to 'Show' , article_path(article) %></td>
#       <td><%= link_to 'Edit' , edit_article_path(article) %></td>
#       <td><%= button_to 'Delete', article_path(article), method: :delete, onclick: "return confirm('Are you sure?');" %></td>
#       </tr>
#       <% end %>
#     </tbody>
# </table>

# app/models/article.rb
# class Article < ApplicationRecord
#     has_many :comments
#     accepts_nested_attributes_for :comments, allow_destroy: true
#   end
  
#   # app/models/comment.rb
#   class Comment < ApplicationRecord
#     belongs_to :article
#   end
  
# <%= form_with(model: @article, local: true) do |form| %>
#     <div class="field">
#       <%= form.label :title %>
#       <%= form.text_field :title %>
#     </div>
  
#     <div class="field">
#       <%= form.label :content %>
#       <%= form.text_area :content %>
#     </div>
  
#     <%= form.fields_for :comments do |comment_form| %>
#       <div class="field">
#         <%= comment_form.label :body, 'Comment Body' %>
#         <%= comment_form.text_area :body %>
#       </div>
#     <% end %>
  
#     <div class="actions">
#       <%= form.submit %>
#     </div>
#   <% end %>

# app/controllers/articles_controller.rb
# class ArticlesController < ApplicationController
#     def new
#       @article = Article.new
#       @article.comments.build # Build an empty comment for the form
#     end
  
#     def create
#       @article = Article.new(article_params)
#       if @article.save
#         redirect_to @article, notice: 'Article was successfully created.'
#       else
#         render :new
#       end
#     end
  
#     private
  
#     def article_params
#       params.require(:article).permit(:title, :content, comments_attributes: [:id, :body, :_destroy])
#     end
#   end
  

# <div class="field">
#     <%= form.label :gender %>
#     <%= form.select :gender, options_for_select(['Male', 'Female', 'Other']), prompt: 'Select Gender' %>
#     <%= form.error_messages_for :gender %>
#   </div>

#   <div class="field">
#   <%= form.label :mobile_number %>
#   <%= form.text_field :mobile_number %>
#   <%= form.error_messages_for :mobile_number %>
# </div>