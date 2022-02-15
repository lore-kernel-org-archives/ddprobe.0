Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD9A71365
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644909384;
	h=To:Subject:From:Message-Id:Date;
	bh=GTf6ewCSM4mFwVKv+iPARdp5JQ3PxV9lU7JklJCj+EA=;
	b=KT8rhjbR8XTAx8jlyL+Dra580V5MtmNfdvqnCmezDY+B2v11Hfo8/xXDgxVArsun
	/BjvDvqRhqRtDVr4UwvsUoxFX5yfa/35YxXb2zhqHwUidbCTwQa6nMRC175tyZ3cnGf
	oPt7kUIr8CqRWz0YnsXX8tvVgV1iRf4Lgyl9lBog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644909384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GTf6ewCSM4mFwVKv+iPARdp5JQ3PxV9lU7JklJCj+EA=;
	b=iC6KvLYj3F1DyT199nA0axgmPZRzA4O9BdjGVl2tj/1i0arwqOwho1WmQy56D0mw
	uGbguzSIWpuVIPSevZZ408u34ZwJdYudRQCKElTD3bgBewjgY1e8e295vwCX7m1hKlt
	mDIQoN93cUqoSBNkHderd/DhkorMNan4xma9tHv0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc3d5416-847638d9-9859-4480-903a-7d05f16b1060-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 013088955d2a728fc5f103666b84d7a287325eebb7496f9e429f2e45ebf438e2
Date: Tue, 15 Feb 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644909384
