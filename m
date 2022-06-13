Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECDB1376
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 13:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655126279;
	h=To:Subject:From:Message-Id:Date;
	bh=WpZa7m/lQNS8kTzct7aoRVEeF+JNGhO14BQ4zvAG6NU=;
	b=Aod11Fj65YGtzYO1BrVVOHhSvv3JIJef3+IbrKpCMuN5tDnxJuNVR4WooUlLRQA9
	bwQ3PA1IXxn//LTaOZIAW2qF+DDSdcygIPqB8he/iGjEiGEIo+wLO9Fg43ogpsPmn8X
	Nm9s1zB+yshVIq03A5CQUgaq6DAAy60ZaiLJkYOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655126279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WpZa7m/lQNS8kTzct7aoRVEeF+JNGhO14BQ4zvAG6NU=;
	b=ETerleeIi3zaZ1YNETE7TCbg4jco+GR4yMyK2h8JBLprPulYjYDT4NjubZZKwBbd
	+0cvW4VX2K1r/mJD7uU7aUn2J6vk2L185XEOdfF4P8divnA5OfZgzwxYaWp5idimT13
	r0n0iUAdLpDb4E2PkZ9ocnrR7uoY2hlilLUQsylk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815d36c42f-6261be2c-695c-4e95-b33f-e98dba081dc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7309ffcdfa2dd56ade9a4f8f6e89fd04b602ea6f3e3292822d98188a277244d8
Date: Mon, 13 Jun 2022 13:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655126279
