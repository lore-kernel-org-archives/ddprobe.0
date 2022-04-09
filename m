Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102B57E3
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 13:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649510878;
	h=To:Subject:From:Message-Id:Date;
	bh=ghdyj35+cuWjRMjGcmMzSddhple7YImAHNw1NJdyzfk=;
	b=FX5c3ieNrEoGXmbArLpeo1M37GIwpH+k1nwD8y6zjPL3HywH2y1S5EYI1aqRvvBV
	9DZ+VJAbn2nEEwwzHRutnVhoKF4C31Xcxv2b2GDN6ScIAS+SZZZZmIYBB+PnrdavkhK
	7TBXXfbVKCGaQk86SfMSpK/jqFNW1Q6nrsyHbOe4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649510878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ghdyj35+cuWjRMjGcmMzSddhple7YImAHNw1NJdyzfk=;
	b=B4vOSFLdwv0ejhKytc/l9eXnTTTh/2y4ZtAG1Fwbin5q/NGXy32+WzTxqDQZmau1
	S8bXjOOI3fq3P6wNfGj0pz36kEdRRuZk+ifdnEVOYhtdVLuJ0v80LNk4LOFzLe2fPP2
	F9OPQoKax2fqy5Y92cD7Nya93TtD6YFPP+/NVvq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800e828c7d-cf2f55b0-5c9f-43ff-a034-2c05ad829578-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f7ce8f78e39ee2104708989f1ea0f9a57f653b45fc9bf8327ef407260a274ab
Date: Sat, 9 Apr 2022 13:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649510878
