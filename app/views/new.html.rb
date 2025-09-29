<!-- app/views/movies/new.html.erb -->
<h2>Create New Movie</h2>

<%= form_with(model: @movie || Movie.new, url: movies_path, method: :post) do |form| %>
  <div class="mb-3">
    <%= form.label :title, class: 'form-label' %>
    <%= form.text_field :title, class: 'form-control' %>
  </div>

  <div class="mb-3">
    <%= form.label :rating, class: 'form-label' %>
    <%= form.select :rating, ['G','PG','PG-13','R','NC-17'], {}, {class: 'form-select'} %>
  </div>

  <div class="mb-3">
    <%= form.label :release_date, class: 'form-label' %>
    <%= form.date_field :release_date, class: 'form-control' %>
  </div>

  <div class="mb-3">
    <%= form.label :description, class: 'form-label' %>
    <%= form.text_area :description, class: 'form-control', rows: 5 %>
  </div>

  <%= form.submit 'Save Changes', class: 'btn btn-primary' %>
<% end %>
