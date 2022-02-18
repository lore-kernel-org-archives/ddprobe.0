Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDE14C68
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645216584;
	h=To:Subject:From:Message-Id:Date;
	bh=ItYHAVDjChNMQJDwTaig3Twzi3pCeSqzMT5PLDRjW0g=;
	b=UBXUWuwuB3wGigoQ6aDXN0tfBBKS32O8r8HcbzcK/6Aypph7/GdBLObEMW8iBhgv
	hZte8NZBCol2LMYkdanTv1erER0myMwRG+SDCpCwp9aVI1PXrEVs4xYAXrt57WEOSdN
	pHNRw/gbOBPjQ0d9vO8XcIVCy662jOjPzGtlEBPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645216584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ItYHAVDjChNMQJDwTaig3Twzi3pCeSqzMT5PLDRjW0g=;
	b=Szjh3eO7beQ4stOYkfkQiybX5KH40aN/Y9AhAo+Vyect0nbAWTlPKbDRfjPP5Bz8
	jeuQqdlyIPET/4UsQj6LgLKs9Y7ou9EUWqtz3uZM/BQq0ZkCw3pGRdfI+kgw68sumNP
	G6Izvf1wA8Jdg+oR+ifvIwl4g+O1u5n+lsL1TSNo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e8cd43a-043701d7-0e1e-43c8-bc69-7631df0d87d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c24e1b77960dd53bbafeda2b095ef6d0a40b252b7b5532737c3fc082ab5e5a4
Date: Fri, 18 Feb 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645216584
