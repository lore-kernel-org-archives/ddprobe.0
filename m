Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B06047B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660699253;
	h=To:Subject:From:Message-Id:Date;
	bh=TloaEPMGnI8HRb6RtmtqTPWDbeVLF1ork4UVejWatro=;
	b=WFCjbtzbHum/rii1KuzCSp/CSfOgiwGUWo4/WQtx9BBGtb0BkWemV540vc0Yhgi/
	2UiVRhzmbNOidh51e9ESHLmUeOg67wl7GBWMsHOiLEPYfYRiaeyzfJkt6Z8TW0AfbZi
	7KDN74MrIe1QeesBubUON5r5pG25WCAkgiEaH3F4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660699253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TloaEPMGnI8HRb6RtmtqTPWDbeVLF1ork4UVejWatro=;
	b=dFz0zbxHCBL8SYmT9XYUibTTWkDFYaO10D0hG36hH6A1dD4SteicGQS9sSpklo21
	aUdT3FaZQ2AzKn0TllhWPyW/ydi2ARt3dg8OVzq9p28zC8kdXgUaFNYjduO+4yIKXYT
	2q4qOISZ1Sv6vU/6h1UN9GD9RYdIvuADWTh8NRp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a9639752-79f6ec05-77d6-40f1-9e86-eab4de94512b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfb877717801e40509287627c4369311b656fabd082de5e4eeae33fdeb270ab2
Date: Wed, 17 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660699252
