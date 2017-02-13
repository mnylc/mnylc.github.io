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

## Payment Policy ##
We accept payment by credit card or by invoice. Please note that we do not accept cash payment, on site or otherwise. 

## Workshop Cancellation Policy ##
METRO reserves the right to cancel any workshop or to substitute instructors. In the event of a cancellation, postponement, or substitution, registrants will be notified in advance (if possible) via email and may receive a full refund of the registration fee.

## Participant Cancellation Policy ##
All registration cancellations must be submitted in writing to events@metro.org.

In order to receive a refund, we must receive your cancellation email at least 24 hours prior to the event start time.
If METRO does not receive your cancellation email before that deadline, an invoice will be sent to recoup any unpaid fees. 

If you are unable to attend a workshop, you may choose to send another person in your place without penalty. If possible, we request that you notify us in advance.
 
Refunds are provided by credit card or check and will be processed within about four weeks.

## Private Space ##
METRO will make private space available to nursing mothers upon request. Please contact us at events [at] metro [dot] org to make a reservation.

## Contact Information ##
Please contact our events staff by email to events [at] metro [dot] org with any additional questions or inquiries.
