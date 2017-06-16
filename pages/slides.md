---
title: Slides
permalink: /slides/
layout: slides

use_tag: "event"
---
{% if site.data.events.size > 0 %}
{% for e in site.data.events %}
<section>
<h4><a href="{{ e.url }}">
      {{ e['name']['html'] }}
    </a></h4>
	<h5>{{ e.start.local | date: "%a, %b %d, %Y, %l:%M %P" }}</h5>
	<div>{{ e.description.html  | strip_html | truncatewords: 50 }}</div>
	</section>
{% endfor %}
{% endif %}

