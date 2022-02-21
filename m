Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB667E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645483285;
	h=To:Subject:From:Message-Id:Date;
	bh=rcE0ZsNConswdc+wekzY8C1iejs8YEva2lujkd3McYM=;
	b=U78suV/SnAsY2pjmfmpJeQoahkrY5GHkzySm144iIrTSY4+NcKAVBKiLpxX8FajP
	I3PVeW+AFgdj34siAYPOgkuPmGgDa+yJmbe7U6bqUsH6is5+w6fZk6L9wKbNkzKx/5C
	/G1j4vkCVICZwu6M8CY4yxgwddOMH65CEr4viBx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645483285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rcE0ZsNConswdc+wekzY8C1iejs8YEva2lujkd3McYM=;
	b=b635NeB1lv5TvolgJkzJkpWcycrcDLlRJaU43dqpwq2K1zzpPr2TYBHeCQ6tEne5
	mBo3+cGONZeZi5lCNyP+rvwbUiyWQg1bageZ7w00ZE/3YmWIRdykisyWCf7jIsdJadn
	ZSDEjL3FgAKtGmFxwvQ1zD8rJNCyemIC2D/UdOoQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e725901-15856e98-1783-46f9-9b64-cf4dc5c0f619-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33a9713f4a8ffae1610e25bb0165503a7a9530673564a45c6a9d3da35221a8ed
Date: Mon, 21 Feb 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645483284
