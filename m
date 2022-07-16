Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5401843
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 18:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657995412;
	h=To:Subject:From:Message-Id:Date;
	bh=HDfNDWLnoKVhmiQzcVLydlpkJL8dp3BmfeM7397oLO0=;
	b=Aav6Zb1l7Xr7jwXMdD+uebBlsNtJP1ZiB1raZzREZ151+CdBeiWt9cMDjCer9RVg
	gos/VIXgw/je7VQ71btw9j5lEz1mXO+wRNI8bq8JBBVHo8EOD4CTTY6Bq2RPL8XtPa1
	1vQM5D45RjpEUAnih0MgAbbDP2du6JPSdXu1edGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657995412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HDfNDWLnoKVhmiQzcVLydlpkJL8dp3BmfeM7397oLO0=;
	b=MmCNb0TCFByXN4hLwOQfkmoYD+t5sV8HNv0VkpJEIwVzfu41FkPR4mC4ZFsNs1gx
	dUMhHv2Shcnm+4RNvKO3H0xDO+mYbn/qRL0D+G6/Q8mMdYgyNFXcifF9dNrt8EOpJdl
	8Lx+sTaMAf9v8gGV/t5Q6bxCoshdxQdl06X+cLgQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182083a436c-f34914a0-249a-44b6-8673-077330a0c91c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 198f780820b13224a6345c9c693c1a6c9f6f5c5a4a9325fd02b98b7b22ad2bb0
Date: Sat, 16 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657995412
