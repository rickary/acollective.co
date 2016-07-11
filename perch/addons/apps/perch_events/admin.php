<?php
   	if ($CurrentUser->logged_in() && $CurrentUser->has_priv('perch_events')) {
   		$this->register_app('perch_events', 'Events', 1, 'Events calendar', '1.9.3');
    	$this->require_version('perch_events', '2.8.29');
    	$this->add_setting('perch_events_detail_url', 'Event detail page path', 'text', '/events/event.php?s={eventSlug}');
	    $this->add_create_page('perch_events', 'edit');
	}
