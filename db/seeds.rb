# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

blog_cat = Blog.find_or_create_by!(id: 1, title: 'ねこがすき！にゃんにゃんブログ')
blog_dog = Blog.find_or_create_by!(id: 2, title: 'いぬがすき！わんわんブログ')
blog_ito = Blog.find_or_create_by!(id: 3, title: 'つまがすき！いとうさんブログ')

entry_1st = blog_cat.entries.find_or_create_by!(id: 1, title: 'はじめてのエントリー', body: 'はじめまして！')
entry_2nd = blog_cat.entries.find_or_create_by!(id: 2, title: '2番目のエントリー',    body: 'おひさしぶりです！')
entry_orz = blog_ito.entries.find_or_create_by!(id: 3, title: '3番目のエントリー',    body: 'もうくじけました・・・')

entry_1st.comments.find_or_create_by!(id: 1, body: 'てすてす',               status: 'approved')
entry_1st.comments.find_or_create_by!(id: 2, body: 'ねこはかわいいですよね', status: 'unapproved')
entry_2nd.comments.find_or_create_by!(id: 3, body: '例のねこについて',       status: 'approved')
entry_orz.comments.find_or_create_by!(id: 4, body: 'こんにちはこんにちは！', status: 'approved')
