class SearchesController < ApplicationController
  def create
    <ul>
      <% @page.links.each do |link| %>
        <% url = link.href.gsub(/.url\?q\=/,"" ) %>
        <% url = url.gsub(/&sa=U&ei=(.*)/,"" ) %>
        <% url = url.gsub(/.search?(.*)/,"" ) %>
        <% url = url.gsub(/(.*)google.com(.*)/,"" ) %>
        <% url = url.gsub(/(.*)webcache.(.*)/,"" ) %>
        <% if url.length != 0 %>
          <li><%= link_to link.text, url %></li>
        <% end %>
      <% end %>
    </ul>
  end
end
