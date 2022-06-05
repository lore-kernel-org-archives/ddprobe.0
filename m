Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F3D4681
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 06:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654411679;
	h=To:Subject:From:Message-Id:Date;
	bh=GpSEu/vmLiqCTVbzhuty78KV9L8M1vW807ztRZJfuvw=;
	b=goP52/a9bWVjGJcj14juq2yrCzxFmBUgJaJuo7g1Y4rZCYKIDcIYnR9McYbDmo5O
	hVnVmF9GIO7p6JUwYWuBY2kTNf9t+Q4UMX16Wdeh21mUwSq7+aFqRwrVX7A/a9IDxmw
	WOwskNQKrP9MTqO9bLtMHIsHz7fYUNgWNAMZKHLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654411679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GpSEu/vmLiqCTVbzhuty78KV9L8M1vW807ztRZJfuvw=;
	b=f5OWSiTuPUhpb28TH5X+6/Vq9WU4OwdV/RWyRJ18NjAQIJGVfwMzLK1Q6g8iJndM
	2YghJgZWhnrxByaF0CCY+5ZIdtdOaLJKrO5dNDZlwiXvKZQS4dyn0xpYwNN79rouaPj
	MCWjmBkxRrRezbYWHptG7+F4n+men8CMmtrL6ZXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181329ed646-e4cc0411-a937-407b-857d-25eeca216898-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 561dff1c1ea5feb293fb60e290dace8652fb19b86ac778717dafa416a47a753d
Date: Sun, 5 Jun 2022 06:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654411678
