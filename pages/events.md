---
title: Events
permalink: /events/
layout: posts

use_tag: "event"
---
We are committed to providing a welcoming and productive environment for all. Please check out our [Code of Conduct]({{ "/code-of-conduct/" | prepend: site.baseurl }}) for more information. If you have any event-related questions, our email address is [events@metro.org](mailto:events@metro.org), and our phone number is (212) 228-2320.

<hr />

{% if site.data.events.events.size > 0 %}
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
{% else %}

## No events are scheduled at this time. Please check back soon. ##

{% endif %}


## Policies

### Payment
We accept payment by credit card or by invoice. Please note that we do not accept cash payment, on site or otherwise. 

### Workshop Cancellation
METRO reserves the right to cancel any workshop or to substitute instructors. In the event of a cancellation, postponement, or substitution, registrants will be notified in advance (if possible) via email and may receive a full refund of the registration fee.

### Participant Cancellation
All registration cancellations must be submitted in writing to events@metro.org.

In order to receive a refund, we must receive your cancellation email at least 24 hours prior to the event start time. If METRO does not receive your cancellation email before that deadline, an invoice will be sent to recoup any unpaid fees. If you are unable to attend a workshop, you may choose to send another person in your place without penalty if you notify us in advance. Refunds are provided by credit card or check and will be processed within about four weeks.

### Private Space
METRO will make private space available to nursing mothers upon request. Please contact us at [events@metro.org](mailto:events@metro.org) to make a reservation.

