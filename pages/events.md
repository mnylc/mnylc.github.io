---
title: Events
permalink: /events/
layout: posts

use_tag: "event"
---
We look forward to seeing you at 599, the new home of the Metropolitan New York Library Council! Unless otherwise indicated on Eventbrite, our events take place at 599 Eleventh Avenue, on the 8th floor. Directions to 599 can be found [here]({{ "/location/" | prepend: site.baseurl }}).

We are committed to providing a welcoming and productive environment for all. Please check out our [Code of Conduct]({{ "/code-of-conduct/" | prepend: site.baseurl }}) for more information.

Please reach out to us with any event-related questions you might have. Our email address is events [at] metro [dot] org, and our phone number is (212) 228-2320.
<ol class="posts">
{% for e in site.data.events.events %}
<li>
    <h3>
	<a href="{{ e.url }}">
      {{ e['name']['html'] }}
    </a>
	</h3>
	<div class="post-date">{{ e.start.local | date: "%a, %b %d, %Y, %R %p" }}</div>
	<br/>
	<div class="post-excerpt">{{ e.description.text | truncatewords:75 }} </div>
	<br/>
	<div><a href="{{ e.url }}">Register</a></div>
	</li>
{% endfor %}
</ol>
