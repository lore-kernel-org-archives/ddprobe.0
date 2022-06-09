Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8009D3210
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 15:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654789380;
	h=To:Subject:From:Message-Id:Date;
	bh=qGB4opmcL9Sc2ifDY1vOzANAoBnUW0FPx3MN2d/v948=;
	b=VcqvwxVmhINeY1w0/epbvJz1KQUgcqZ7SQA+EZW2y7q9WAblZg3e+5cR3fAMt9cr
	Cr4aOx3WQAuLCOyPrZllegI/DI3Cj14Sbp7AMa3jzIZa+ymcq72EPs9KdCdNmfM1Dw+
	VIDFHxnEQe5mI8vyGRT9yKZjoAebZ0IM1xGro5OM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654789380;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qGB4opmcL9Sc2ifDY1vOzANAoBnUW0FPx3MN2d/v948=;
	b=hdhUvjk6LgoNo/wlO/tCFzCpbHARGMa5NLVz8eKKVgn3UAkaHG0RNj2fsNoKNFqS
	BpzhlYF5yZ+FIy2oc/XRe9WujWw2VlcwPYrDrURhvFqQiQMPv2D/I2sjR11/7Pgqh1X
	57DGeIkOgBYNQdHQGRwmCGbq3jHqDJUUMwZGY4oQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181492214d4-eb9b1272-9abe-4626-b9ec-e6dc9cd40b21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb16665ac931cbb07f976b50eb71a0db77ddd177b02296807365017c888021eb
Date: Thu, 9 Jun 2022 15:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654789379
