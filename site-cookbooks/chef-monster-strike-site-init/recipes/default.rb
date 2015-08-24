#
# Cookbook Name:: chef-monster-strike-site-init
# Recipe:: default
#
# Copyright 2015, oc
#
# All rights reserved - Do Not Redistribute
#

data_ids = data_bag('users')
data_ids.each do |id|
  u = data_bag_item('users', id)
  user u['id'] do
    shell     u['shell']
    password  u['password']
    supports  :manage_home => true, :non_unique => false
    action    [:create]
  end
end
