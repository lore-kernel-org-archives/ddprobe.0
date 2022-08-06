Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78AFF1114
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659781252;
	h=To:Subject:From:Message-Id:Date;
	bh=R8MtIXjd5oQBK8TEIctvLKnZOVZkQcZjM7jax5o0zg0=;
	b=RhlAwLiGecDmMpFcZ278fivzlRizVcc9HaCVSrRcbthZxlfAFzWLGsoafAPiDBlC
	oPWN2SGJpShTVXVtemvoum0KwcmLHnZ4XYrsqAJO8V73FPkbB0LJJ/4Px9IPUlKts+b
	gg/Pq5QtsSEkuTUnvqY3hv+o/vqmqOUPBkkPtonQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659781252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R8MtIXjd5oQBK8TEIctvLKnZOVZkQcZjM7jax5o0zg0=;
	b=IMuv1AU00msZZly85CHleW32fQNGW36OByuhsqVvxQz8dSL+fVZ73a9AFbSeEewC
	I7dp1A8GUd90/C+cmhQgzUYrvsZ29MkgowR/hHgPzw9tPludhIoNXwkdsedIC8n7pq1
	GASB5d54i+yPD5jSPIF32AwJv7DkhgI1a2GKtMz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272ac05d0-3bd591c8-971b-4f48-af77-329141657af2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc9ba22aecc3f0827b36fdf3de617f330d19823ad9a2f02939f50f1e3ec18b53
Date: Sat, 6 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659781252
