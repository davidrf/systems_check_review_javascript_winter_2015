require "sinatra"
require "pg"

configure :development do
  set :db_config, { dbname: "questions_development" }
end

configure :test do
  set :db_config, { dbname: "questions_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

def all_questions
  all = nil
  db_connection do |conn|
    all = conn.exec("SELECT title FROM questions;")
  end
  all
end

def create_question(title)
  db_connection do |conn|
    sql_query = "INSERT INTO questions (title) VALUES ($1)"
    conn.exec_params(sql_query, [title])
  end
end

get "/" do
  redirect "/questions"
end

get "/questions" do
  @questions = all_questions
  erb :index
end

post "/questions" do
  title = params[:title]
  create_question(title) unless title.strip.empty?
  redirect "/questions"
end
