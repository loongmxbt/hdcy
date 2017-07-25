alias Hdcy.{Repo, User, Category, Showcase, Tutor, Post}

Repo.delete_all User

User.changeset(%User{}, %{name: "dragonszy", email: "dragonszy@163.com", password: "szy555", password_confirmation: "szy555"})
|> Repo.insert!


for i <- 1..9 do
  Repo.insert(%Showcase{name: "案例演示#{i}", image: "http://iph.href.lu/300x250", desc: "案例简介一共多少字案例简介一共多少字案例简介一共多少字案例简介一共多少字"})
end

for i <- 1..9 do
  Repo.insert(%Tutor{name: "导师#{i}", image: "http://iph.href.lu/300x250", desc: "导师简介四十字以内"})
end

Repo.insert(%Category{slug: "page", name: "页面"})
Repo.insert(%Category{slug: "head", name: "创业头条"})
Repo.insert(%Category{slug: "info", name: "通知公告"})
Repo.insert(%Category{slug: "activity", name: "创业活动"})
Repo.insert(%Category{slug: "news", name: "新闻速递"})

Repo.insert(%Post{title: "团队入驻", image: "http://iph.href.lu/300x250", body: "团队入驻指南", category_id: 1})
Repo.insert(%Post{title: "公司注册", image: "http://iph.href.lu/300x250", body: "公司注册指南", category_id: 1})
Repo.insert(%Post{title: "团队招募", image: "http://iph.href.lu/300x250", body: "团队招募指南", category_id: 1})
Repo.insert(%Post{title: "创业证办理", image: "http://iph.href.lu/300x250", body: "团队入驻指南", category_id: 1})
Repo.insert(%Post{title: "项目申报", image: "http://iph.href.lu/300x250", body: "项目申报指南", category_id: 1})
Repo.insert(%Post{title: "创业指导", image: "http://iph.href.lu/300x250", body: "创业指导指南", category_id: 1})
Repo.insert(%Post{title: "常用下载", image: "http://iph.href.lu/300x250", body: "常用下载指南", category_id: 1})

for i <- 1..30 do
	Repo.insert(%Post{title: "文章名称#{i}", image: "http://iph.href.lu/300x250", desc: "文章主体内容多少字文章主体内容多少字文章主体内容多少字文章主体内容多少字文章主体内容多少字", category_id: rem(i,4)+1})
end

