---
title: Slides
permalink: /slides/
layout: slides

use_tag: "event"
---
{% if site.data.events.size > 0 %}
{% for e in site.data.events %}
<section>
<a href="{{ e.url }}">
      {{ e['name']['html'] }}
    </a>
	<p>{{ e.start.local | date: "%a, %b %d, %Y, %l:%M %P" }}</p>
	<p style="font-size:75%;">{{ e.description.html }} </p>
	</section>
{% endfor %}
{% endif %}

