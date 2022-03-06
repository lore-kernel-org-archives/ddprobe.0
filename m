Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6715510EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646533284;
	h=To:Subject:From:Message-Id:Date;
	bh=InDahZVQsKuX+RoQ12ovrk9ybRb9wCCBqaupm88qsHY=;
	b=fEdG3B4oQVz07h9V/AUo85viGlHUEbcLcaBfaDodB/luMxhzsxpxtNLAdfcikiXa
	P+Rg9gWGl6uiu1ibR+lSsfgw5BbTJjFuvlsRtRL3W5BzIYQ9TZp1gDp4059n6GioQ5E
	BDoYeYSrukkqVPQriIRcQRiH7XTpTExfVWDKkx7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646533284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=InDahZVQsKuX+RoQ12ovrk9ybRb9wCCBqaupm88qsHY=;
	b=Zbs7oGC/etUTL/u4/E7kb42vMfTwtbAjIutYahgwgm8elyo4I6NNMzbsTXwXd7Lf
	q9LNi+5vmN2RTPVKha+nVxTOeAQg0tJAOs+Tdhw+4kaBz0kGAVJ4Mr/Gal9r/hyULX2
	OA4AnntHNPAs7oWpAmNE1pFztWrP1JhQXNUgp1zs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5d0813b3-b03b3bf3-aee9-4be4-9545-fade4f0f97dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 979cd8e6e97e8781aec55d9ade624afe44be1f01c21dc622e75595d482a2d805
Date: Sun, 6 Mar 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646533284
