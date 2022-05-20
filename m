Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB742F4A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 18:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653071279;
	h=To:Subject:From:Message-Id:Date;
	bh=ZYg7zvOLCfK+3u4A/grOevI/xl8V0S1UuAHeVyfuK3w=;
	b=VEwwYLLjS7Kow+wNx2FeZU1JRQXF4XHUKxZJzdfpxg4d5nWznss8hUOuPBtcnMQ+
	W+ganVx71g7y+AbvUgKzPFu10p1Y2ucspSbeeTPeOtliPnfjMYdPdFk9nqepA5jS496
	BaHTyY70hC+zxRQiNgv63GigmSxFYugc8H0OvGiw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653071279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZYg7zvOLCfK+3u4A/grOevI/xl8V0S1UuAHeVyfuK3w=;
	b=VvkW4Edpdt7akMdoW1/rV7+z6XCimdrleOhOHdvvYwXMpPq8GVofZKwHW8FuLII/
	hdaVbFqFA7Y+qO9N8ejOalFRxQXwLrtzLkeSawSapFN8y737WRg+rW0qyFQO9uy/YUK
	u0s2l1FM5IFUpPWr2QXO0SQk9qpEtfttw5te7Uyk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e2b9f49e-99d64b3e-b19e-4969-94de-12cc2ca191ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95f7f737d832edfd79d7b2cebc13fe0dc1759b0fbe0bc57300be9a9d729f150c
Date: Fri, 20 May 2022 18:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653071279
