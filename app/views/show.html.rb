<!-- app/views/movies/show.html.erb -->
<h2><%= @movie.title %></h2>

<ul class="list-group">
  <li class="list-group-item">
    <strong>Rating:</strong> <%= @movie.rating %>
  </li>
  <li class="list-group-item">
    <strong>Released on:</strong> <%= @movie.release_date.strftime('%B %d, %Y') %>
  </li>
</ul>

<h3 class="mt-3">Description:</h3>
<p><%= @movie.description %></p>


<!-- Links para Ações -->
<div class="mt-3">
  <%= link_to 'Edit', edit_movie_path(@movie), class: 'btn btn-secondary' %>
  <%= link_to 'Delete', movie_path(@movie), class: 'btn btn-danger', data: { turbo_method: :delete, turbo_confirm: 'Are you sure?' } %>
  <%= link_to 'Back to list', movies_path, class: 'btn btn-primary' %>
</div>
