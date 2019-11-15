<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Sign In</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body">
      <%= form_for(resource, as: resource_name, url: session_path(resource_name)) do |f| %>
          <div class="input-group form-group">
          	<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
            </div>
              <%= f.email_field :email, autofocus: true, autocomplete: "email", class: "form-control", placeholder: "Enter Email" %>
          </div>
            
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
            </div>
              <%= f.password_field :password, autocomplete: "current-password", class: "form-control", placeholder: "Password" %>
          </div>
              
          <div class="row align-items-center remember">
            <%= f.check_box :remember_me %>
            <%= f.label :remember_me %>
          </div>
            
          <div class="form-group">
            <%= f.submit "Log in",class: "btn float-right login_btn" %>
					</div>
      <% end %>
			</div>
		    <div class="card-footer">
				  <div class="d-flex justify-content-center links">
					  Don't have an account?<a href="#">Sign Up</a>
				  </div>
				  <div class="d-flex justify-content-center">
					  <a href="#">Forgot your password?</a>
				  </div>
			  </div>
		  </div>
 
    </div>
  </div>
</div>






      <h2>Sign up</h2>

        <%= form_for(resource, as: resource_name, url: registration_path(resource_name)) do |f| %>
          <%= render "devise/shared/error_messages", resource: resource %>

            <div>
              <%= f.label :email %><br />
              <%= f.email_field :email, autofocus: true, autocomplete: "email" %>
            </div>

            <div>
              <%= f.label :password %>
              <% if @minimum_password_length %>
              <em>(<%= @minimum_password_length %> characters minimum)</em>
              <% end %><br />
              <%= f.password_field :password, autocomplete: "new-password" %>
            </div>

            <div>
              <%= f.label :password_confirmation %><br />
              <%= f.password_field :password_confirmation, autocomplete: "new-password" %>
            </div>

            <div>
              <%= f.submit "Sign up" %>
            </div>
          <% end %><br>
      <%= render "devise/shared/links" %>


