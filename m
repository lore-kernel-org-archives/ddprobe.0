Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2D73D6A
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656704213;
	h=To:Subject:From:Message-Id:Date;
	bh=ACiKkq2q85aU32eYKbqQvJDcf0f4XcncbrCTNmKihIM=;
	b=SO8dqUlTqHV2UGZUj9t7WVfN7nZZJLV19jL61AHF8PbuOdXBixOdaT5jEkwImY3M
	vZHkafGMWTwHRd6sFyJLD731+QlvYiIYEUJXl2B57n5PxbFBM7TfxeHFD1QnuFfTsfa
	P52ixP1VuRRG6R+n4wbfZufvrhgY30RWzIlRCTBM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656704213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ACiKkq2q85aU32eYKbqQvJDcf0f4XcncbrCTNmKihIM=;
	b=ZhqnNWrhlfHXLpn3eiyzJ/lE3yWEfFvP5ilwq8H8q+za8wC2gaz1TJ8MGF59MfYQ
	OJtrEHYeLDYDlzmlrF9WFPCR647dqVpSxPnc7CiBOVPh2UhCtH7NXGZSw/cuzQD2sBp
	my0ksS18dugR2d7iHhNLKp+1jXkLwJYT3OliEafI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb44213b-db79c870-f287-4326-bcb1-244187e961ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e1cb0a715fb13f31ad4dbb66764d328c57af00533fe4763830f559e98506291
Date: Fri, 1 Jul 2022 19:36:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656704212
