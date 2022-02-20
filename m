Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 859365A22
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 09:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645349484;
	h=To:Subject:From:Message-Id:Date;
	bh=GKP+B0DRDgMH3zh3sh6ymCwpcTib3LxHvv4D9Cjx4ag=;
	b=EgbABCahLDqqvDZWNCdI1HeKteAA3iz9BVMT46X8gY5JxQlMY3gCmB6LruSYFARI
	AW701VXK4dUIZo82mqx4vtEOyuf1X3pVqOUQK/kACSuZoq55mnPsSuDf9gQb0JZ8cts
	0AQc+LX6DmoXZZW++zalwYXTLFwl/8DeO8/dYWlU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645349484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GKP+B0DRDgMH3zh3sh6ymCwpcTib3LxHvv4D9Cjx4ag=;
	b=UeCZBvS4UEDwZrH7447Ey5mU+qZhRXGrLMPiAv9VQ6vEP+IsqJ8CxO8juAqhArg5
	XTirllZSDgsLADKD5oE/dBZpb/4O6edU1FdR5Yu0R03mEBxZFJXYT+pNxZ6L5AYncQQ
	kxtdm5lYxiC0/uzeN9CeLyWlxmtbgHBga1nj1Ymg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1678b8cf-43a6b54b-3ec8-4e07-b921-62ca78ee081a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09e5e8976839ef530ec4ecdcdcacc591be217a4b412d51d58c3ce71eaa53f5bc
Date: Sun, 20 Feb 2022 09:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645349484
