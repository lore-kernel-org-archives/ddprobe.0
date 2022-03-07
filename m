Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990304292
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646616684;
	h=To:Subject:From:Message-Id:Date;
	bh=KYfD7r2Zda+hiZ7o9PqmpOwyz9s+kXbp6zrIU8QBIF8=;
	b=Wa7uqu0uL9aLO0FqQz0XEBMKaPYeEg4ujPsCCqnv0sQBJCN75lhLkayHZlutN1z1
	oKjYj1XIqQRW9PiFmV60hf2/lpPCxcAjRVcMCs8t1cRM8esyVJx35bB7avPyWsYSWwh
	0geO07Yvh90U7mRyrepYMDkadLrq5R9rCNC+K2zI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646616684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KYfD7r2Zda+hiZ7o9PqmpOwyz9s+kXbp6zrIU8QBIF8=;
	b=LG32QxUGJ5sKHkJg//RL8oMg7HWKOr7ybVq4nFaQEAlqHQ8DgcENA0EEpI816y1S
	M2LA9Jvzpy1i8z6rJ2mAF3fP8YzQoFLogqRic+u8Gk5MuSNN2QvRviibCMvPzGdHH1I
	80fvuxwMAmmFsu+dzR6jrBUUIG9DfaZ0R5VUkHa0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6200a92b-05ccb4b9-8cfd-4575-8e56-d30a7b3ae43e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65de770b111217dba7f8f121e20a803a9dab2087b2486d34ba8171585a347451
Date: Mon, 7 Mar 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646616684
