Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6649738FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645068084;
	h=To:Subject:From:Message-Id:Date;
	bh=4vNcGlV72qykF0AYcIvNwJ+Ox0JFrvSi3ZxT0swVTCg=;
	b=duDdIAbggnD0houugq2/d9fRZb3Nsf+lF/mhRYP789Ar7dJxQhVgBsFJW2K92X7R
	U9GWcF19SOcLvENP4k6cWB2lhf7ASBfZrwrrK9zKOdV2reeo60rWVLdJPo2E8ibMC2g
	otk4j4qu0I+WQ7W6xn48VEwH/J4ENxXB7Wf5u8mo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645068084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4vNcGlV72qykF0AYcIvNwJ+Ox0JFrvSi3ZxT0swVTCg=;
	b=LewZhDwZxFFhmTSbH1t5jErO3bAMGBG13nPuvt3nEKQsSYW+Y/6aGhiBfKNiCxAE
	W2HRTGHGdcrEZTr5JSCZnW5+d/XHBT/B4jpJhAMZ8PSs5hdiOk+21y71wf0t+MyJJRA
	Z4pD+Jw8JI0udw3bnIIAScM89FCpZsXLuxIgHG04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f05b2e602-c665704f-93a0-42f1-a170-9e334063863d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 570e0751c3acf560f582a70f0a7e4531ea5dc23f45c6f7f57d3b06a6ee250652
Date: Thu, 17 Feb 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645068084
