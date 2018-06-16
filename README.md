간단과제 2

- Twitter 처음부터 만들어보기
- Table(Model)명 : board

     $ rails g model board
     $ rails db:migrate

- Controller명 : TweetController
      $ rails g controller Tweet
      $ rails d controller TweetController	#controller 삭제 d: destroy
  
  - action : index, show, new, create, edit, update, destroy
- View : index,show,new,edit
  views/board
- Bootstrap 적용하기
- 작성한 사람의 ip주소 저장하기

1-1

    Gemfile
    #Bootstrap
    gem 'bootstrap','~>4.1.1'
    $ bundle install

1-2views/layouts/application.html.erb : bootstrap코드 추가

    <!DOCTYPE html>
    <html>
      <head>
        <title>TestApp</title>
        <%= csrf_meta_tags %>
        <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
    
        <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
        <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
      </head>
      
      <body>
      <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto font-weight-normal">나에게 질문하기</h5>
            <nav class="my-2 my-md-0 mr-md-3">
              <a class="p-2 text-dark" href="/ask">홈으로</a>
              <a class="p-2 text-dark" href="/ask/new">질문하기</a>
            </nav>
      </div>
    
        <div class ="container">
          <%= yield %>
        </div>
      </body>
    </html>
    

1-3assets/stylesheets/application.scss

    @import "bootstrap";

1-4javascripts/application.js

    //= require jquery
    //= require jquery_ujs
    //= require popper
    //= require bootstrap
    //= require turbolinks
    //= require_tree .



- 다음주 월요일 : ruby코드로 form 만들기=>view helper