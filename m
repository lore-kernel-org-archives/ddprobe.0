Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A04910E9
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 08:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653555539;
	h=To:Subject:From:Message-Id:Date;
	bh=h+fwLZZ8fKKZwb+HEpXl/Jo+oUlGD/1BXHJUceS0OSw=;
	b=NZx92DjFbUHwaaN3vthAtI4gTpyhRRER1VEwxiAFEpqlMA80YxELw67fHiTMwT1x
	mfgsUw/fujcPLLzgXCm40L3MFhiyOG2ZFBP7Y5Jij1SJbn8kw0gT6a8iNqAZn4lnwbo
	pUzkhZJy5m+G6/7ODnUjNTHvVev9/eG4C2E3FblE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653555539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h+fwLZZ8fKKZwb+HEpXl/Jo+oUlGD/1BXHJUceS0OSw=;
	b=CQlF14whA1Gzi7BqiZTepuLOHMZy9U5OVvOskmUrcjMjvOsgVMP8lrkXtDkU8jSC
	C0xp41eY1u7xEaIhS0bw88JF9jduA5SeOGrbSYbAQv2rvCiVNl81Bx4sqLWjZFtxmvi
	LTWfnlPRxndtXBCCoD0pxnXwaSn4POuKxLXv9fg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff972d86-4abb3a2e-daa9-498b-847a-6401b5538b69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d43316ae5ebc42e9ec6af14d69da7cdc7d1d969d1a1fd55a352cc9ee2a5da8f7
Date: Thu, 26 May 2022 08:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653555539
