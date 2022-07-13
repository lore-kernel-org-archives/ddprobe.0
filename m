Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6356E4A25
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657747012;
	h=To:Subject:From:Message-Id:Date;
	bh=UmBgZlLycGX2dUKDnT3l8r6wsbDG83fKHZ6qW9SrXwM=;
	b=j19PoFBbGD865syAmsmHItuChJYQ8Kg7NLYNJkvPBtD3GHmdXsWSdpxj6pjj6/Rn
	wnfeqNPSmNW+ItKUMvEWPaCPzPsS7lhLojgk5LMEvjs5k5WjwZRroFOXat1Xwl0Kbfj
	kgPVd8t6E4Uc0TGgeKSYcqcN3FcdZbvzcmq0+atI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657747012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UmBgZlLycGX2dUKDnT3l8r6wsbDG83fKHZ6qW9SrXwM=;
	b=QD167qOYWeR5ZgzTla+QMtXzrR6N4VWAX3HOKEhk6bsAixr2oZNDpqpq65/9czua
	hfKL0M12dkKR2Rr2bw5UoQ6mW3SFLMaBmNK9/eI0T6tp09STD6pamDZlb4Qe4NzVI+Z
	baxdVuYIHL9CmpcQJbzjeGNzOtD3ufVA1ldClM+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f96bfafe-abcfeb41-7834-4dae-bca1-0e5c8f6a529f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 792ea2b74d68f17c8556fe6d7d050be82da1a90354c2f82b3b0dcc02be9a5698
Date: Wed, 13 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657747012
