---
layout: post
title:  "Don't break the chain"
date:   2019-01-01 09:01:00 +0900
categories: diary
---

Try to add a new link to a chain everyday and don't break the chain.

{% highlight ruby %}
# A chain is initialized here
$chain = []

# Add a link to the chain
def add(link)
  $chain.push(link)
end

# Define a job to execute every day
job_type :add_link_to_the_chain, '/usr/local/bin/add_link_to_the_chain :task :fun_level'

every :day do
  add([Date.today, "Done"])
end
{% endhighlight %}
