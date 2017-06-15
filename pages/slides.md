---
title: Slides
permalink: /slides/
layout: slides

use_tag: "event"
---
{% if site.data.events.size > 0 %}
{% for e in site.data.events %}
<section>
<h5><a href="{{ e.url }}">
      {{ e['name']['html'] }}
    </a></h5>
	<h6>{{ e.start.local | date: "%a, %b %d, %Y, %l:%M %P" }}</h6>
	<div>{{ e.description.html  | strip_html | truncatewords: 50 }}</div>
	</section>
{% endfor %}
{% endif %}

