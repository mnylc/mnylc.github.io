---
title: Slides
permalink: /dhsb0bckj/
layout: slides

use_tag: "event"
---

{% if site.data.events.size > 0 %}
<div style="font-size: 65%;">Visit <a href="http://metro.org/events">http://metro.org/events</a> for details.</div>
{% for e in site.data.events %}
<section>
	<br/>
	<h4><a href="{{ e.url }}">{{ e['name']['html'] }}</a></h4>
	<h5>{{ e.start.local | date: "%a, %b %d, %Y, %l:%M %P" }}</h5>
	<div>{{ e.description.html  | strip_html | truncatewords: 25 }}</div>
</section>
{% endfor %}
{% else %}
<section>
<div>No events are scheduled at this time.</div>
<div style="font-size: 65%;">Check <a href="http://metro.org/events">http://metro.org/events</a> for future listings.</div>
</section>
{% endif %}

