Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3BA53B2
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658429812;
	h=To:Subject:From:Message-Id:Date;
	bh=4ei8vqRMpbrd9rlzECrSQhJdacV0Y94fNQ5OYc7wJyI=;
	b=DkCR5NS48nZeorUuN65swUYrVB2LYm278Zpi2uA84p8wWVrsRgk3MnKwEqQKaZ7K
	CfM7bm0VnBG4W1F9MK6SFTVsUMemSEmRTEyQIHgAmqHIo4DZlFdB/r5azbwnF5hxDXn
	1A0083Ar53q15GDPoJaGrID1wzq01gyzJQwFrniA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658429812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ei8vqRMpbrd9rlzECrSQhJdacV0Y94fNQ5OYc7wJyI=;
	b=N5s0bQQ6WP0Jwrb//fDChgihv8YWsQlbPP+Fscbb/Y4K9xiK+MRkyfBV3+iQ39Qw
	A/0+R5l+RDWhNqZt/J1wiU8M7WIJMv9wMv1FgKIyst9n7pNQ0UbR5QvKrQ1Q/N2A+di
	rRwXY+feozuvqqF+nsdCiPy6WLSxkp9Dlsj7Y6bk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182221eae65-44b0c564-1f40-40f8-aaea-cf152258b2d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5fb8a7e3409eef2cdcaa6d350ad498c97f80a09cd74f2be0876fcc6704e5630
Date: Thu, 21 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658429812
