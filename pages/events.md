---
title: Events
permalink: /events/
layout: posts

use_tag: "event"

---
[Policies](#policies)

Thank you for your interest in METRO's upcoming events! If you'd like to help shape our programming:

* [pitch us on a workshop you'd like to lead](https://docs.google.com/forms/d/e/1FAIpQLSeJyRzSq5wQV_ZwOQ_vnVZ69g2qcg5cqW9-6cvwwqF2FGvvyA/viewform?usp=sf_link)
* [suggest a workshop you'd like us to produce](https://docs.google.com/forms/d/e/1FAIpQLScfvtiiCMu1eFiYFrVRdU7TFIYMl1JbGSvBm9djLUYh8VGsaQ/viewform?usp=sf_link)

For virtual, on-demand learning, take a look at tutorials offered by [lynda.com](http://lynda.com/) and request free access [here.](https://docs.google.com/forms/d/e/1FAIpQLSex4Y3mWpBdnc_24ULgISj6Jr8Ww_URqFNI82u3Q6aQB5xyeg/viewform?usp=sf_link)

We are committed to providing a welcoming and productive environment for all. Please check out our [Code of Conduct]({{ "/code-of-conduct/" | prepend: site.baseurl }}) for more information. Please reach out to us with your events-related questions; our email address is [events@metro.org](mailto:events@metro.org), and our phone number is (212) 228-2320.

<hr />

{% if site.data.events.size > 0 %}
<ol class="posts">
{% for e in site.data.events %}
<li>
    <h3>
	<a href="{{ e.url }}">
      {{ e['name']['html'] }}
    </a>
	</h3>
	<div class="post-date">{{ e.start.local | date: "%a, %b %d, %Y, %l:%M %P" }}</div>
	<br/>
	<div class="post-excerpt">{{ e.description.html }} </div>
	<br/>
	<div><a href="{{ e.url }}">Register</a></div><br/>
	<hr/>
	</li>
	<div><br/></div>
{% endfor %}
</ol>

{% else %}

## No events are scheduled at this time. Please check back soon. ##

{% endif %}

<a class="anchor" name="policies">&nbsp;</a>

<h2>Policies</h2>

### Payment
We accept payment by credit card or by invoice. Please note that we do not accept cash payment, on site or otherwise.

### Workshop Cancellation
METRO reserves the right to cancel any workshop or to substitute instructors. In the event of a cancellation, postponement, or substitution, registrants will be notified in advance (if possible) via email and may receive a full refund of the registration fee.

### Participant Cancellation
All registration cancellations must be submitted in writing to events@metro.org.

In order to receive a refund, we must receive your cancellation email at least 24 hours prior to the event start time. If METRO does not receive your cancellation email before that deadline, an invoice will be sent to recoup any unpaid fees. If you are unable to attend a workshop, you may choose to send another person in your place without penalty if you notify us in advance. Refunds are provided by credit card or check and will be processed within about four weeks.

### Private Space
METRO will make private space available to nursing mothers upon request. Please contact us at [events@metro.org](mailto:events@metro.org) to make a reservation.

[Back to top](#top)



