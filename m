Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8387233C5
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660942252;
	h=To:Subject:From:Message-Id:Date;
	bh=SkubM06iX1wY2zeM82U7JtHp6AE+7tq12frJ1KDCPNY=;
	b=BSXvJVmPOPQirggVuPQsRkVNGuPf/MioTDaBce7GCTs0EkFRQHNY7lUi1X8XFs9j
	jm0lR+rCrMSKTGj8qzgb114skomHUsfKWt+xouhjsnpg0jaQ5LYUXweOnEAxL/6iqMA
	ZG9V2cA2uwsdRzbDeytXCm34X9ftECDHP7Vl3oj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660942252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SkubM06iX1wY2zeM82U7JtHp6AE+7tq12frJ1KDCPNY=;
	b=Qbz6494E/xjgnox7Ibte2pqEGmFEd3iQUNKdE3oqaQDjLrXqCtMiSlLkeGZGDune
	U965Umc0DbOys2o6x53Hr9bqMk7x6D9zaNSnNWFFUKjSGXekuPCYb9yYQFEOnxF6p1r
	H8VYoXLMEAPx5C5NiC4iqYLfudcEzFRvyiT3k2SE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b7df7a57-045e93e8-418d-456f-948f-648f21f5567d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f849b1cbb8348c73fcc3ae73b9fdcd0b0b5a608654b399db9fe3250f501cc8e
Date: Fri, 19 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660942252
