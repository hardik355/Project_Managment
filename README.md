# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<h1> Project Listing </h1><br ><br >

<div class="sidebar-container">
  <div class="sidebar-logo">
    Project Listing
  </div>
  <ul class="sidebar-navigation">
    <li>
      <a href="#">
        <i class="fa fa-home" aria-hidden="true"></i> Homepage
      </a>
    </li>
  </ul>
</div>

<div class="content-container">
  <div class="container-fluid">
    <!-- Main component for a primary marketing message or call to action -->
    <div class="jumbotron">
      <h1>Navbar example</h1>
      <p>This example is a quick exercise to illustrate how the default, static and fixed to top navbar work. It includes the responsive CSS and HTML, so it also adapts to your viewport and device.</p>
      <p>To see the difference between static and fixed top navbars, just scroll.</p>
      <p>
        <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
      </p>
    </div>
  </div>
</div>






<div class="sidebar-container">
  <div class="sidebar-logo">
    <table>
      <ul>
          <li>Project Listing</li>
      </ul>
    </div>
  <ul class="sidebar-navigation">
  <% @projects.each do |p|%>
      <li><%= p.p_name %></li>
  <%end%>
  </ul>
</table>
</div>
