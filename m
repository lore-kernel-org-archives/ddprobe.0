Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BAE2F48
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 21:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652997539;
	h=To:Subject:From:Message-Id:Date;
	bh=gtbv+bJ+y+d2L33t0/VIfrAb8J+B/PROuTgCLBBFg0E=;
	b=FIHlGvl5NwYQyYeFoygAIQfQICOd3Bsp50LFsgY26FEXPc+28gFQJ49Pq5TogS/h
	lvuMEyyMwj4ejwVLp6Ve4Vs9nPWvzkCachvRiM4cvxKF8APgW7K2hqBxZYaErFsX/df
	MtZu54/wk4JVSeq3PJ55d8bi9gchPQ9Ga1ps1T+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652997539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gtbv+bJ+y+d2L33t0/VIfrAb8J+B/PROuTgCLBBFg0E=;
	b=KMBt2QTNo9FLJvaHN7JVM3CDyUMWPc3TWR05XBuR1U1PEkMJkQR+oglBs1D8xNzQ
	X0z5Aw3w2p7f2ukrJ61U/ksjScB4+D1SWoe0lnQmP9U9QQABmXvPO6iNYV+QmCXFc+B
	Zf/C0rMydBd0Q+z2YOeICyQsb1rzxMkVE6KwPQ/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180de54c5e9-54022cdf-42b0-4c52-ba6f-e3c3bbfca12e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67ab0153d9266485349d394818d374f25b7ea8b913dd3599ed62c064394376c6
Date: Thu, 19 May 2022 21:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652997539
