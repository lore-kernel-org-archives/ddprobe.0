Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544EA1B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644998484;
	h=To:Subject:From:Message-Id:Date;
	bh=zVK5FLmF/yZsD7aBGIb5E+roHnPgAP/DHdEUjYEX53o=;
	b=YIQFpAIdBpv+mRqYC+UKquIGLfcZkmUsW8gN4d7f6ahmVg0xIADIGKYDRpUpQets
	0YE1uHsF1ToQ+thnwL2T/bgIfDUbssFNLNmi8PWiCW7AX9KC9J1TMLkRpvCBZ2lnYWV
	RorGujfrWZUeAUeDwLMvEgDshk5EVykdbtppFGWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644998484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zVK5FLmF/yZsD7aBGIb5E+roHnPgAP/DHdEUjYEX53o=;
	b=SPdHARKAGlgE/ZO8cWoMgiK5IdM+AQeSD7Ft4ANex9VrTjuN06lC6p/fsjdDZ7ki
	hNXOIlVbHgr5ibLnH7Qzkib8oUJX10//pMWB2jhzCZlWH3mUiR1AKn3uiVcAhi16eUx
	Or/Hh+mc89GR5bQDdAFrkqkSsBXiQArQuZey2fmY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f018ce32b-83ebfc9d-c990-4cfa-93c8-6b246eb08c6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a326c24a7db8a94c368f57b3cf663e23610565c6d76ae99d18918362de6712e
Date: Wed, 16 Feb 2022 08:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644998484
