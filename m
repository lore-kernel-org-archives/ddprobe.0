Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1740F7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 00:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656376612;
	h=To:Subject:From:Message-Id:Date;
	bh=S+9nQx2eZRiLFhaGkpnuvkrzMEmYX1RRG687gosUHZg=;
	b=ZPYQcYcdwOw2oEg0H6SqQAgxEDSCuZYjyTQYcz6XNMfZn4b/GhpdFsnqCH8k2ZWP
	KOJmBqoZTwu3lHtGxPsJoqIaHDoEWWxdrKdDLHwfKjKDHYf1yUqCTSEDNx2+j3uFNvc
	mRvMaAbfeTFft65SWkkXQKlBlfb3vqWFg8OBXuE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656376612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S+9nQx2eZRiLFhaGkpnuvkrzMEmYX1RRG687gosUHZg=;
	b=POfLGjJPh7SteJ9bTnGh9utxTLuKf+OCYJhQBcArTLSzr5Yp8qaUtQfI1DHmgLbv
	8MDT5ACtXwc+zj7abzK6Mnp5J6hw5fHKooi/xvTV6DFqZVVHmKbEuD9piJ2T10jE+Sj
	3/R2I1XL8wLTgwUxXVPjXn8BciQl+iA16bch2eUQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a7bd55ef-ec0a0989-ba4c-4f88-a8a7-f0bc9c147802-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c174a33e8ac05cb3b85383350e5b4380aec1c4a5768bb1d79e62300c5b8f3447
Date: Tue, 28 Jun 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656376612
