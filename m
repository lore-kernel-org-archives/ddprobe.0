Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944797A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 01:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645839984;
	h=To:Subject:From:Message-Id:Date;
	bh=N7qhFQGeI5nCRixqF8DUByro64QWmopzpzX6tB70huM=;
	b=Lsjx/kQeLvhp/MVmXAbiRJqz8hZBaPi2KaMywyxD7vnBJMvsS4L/Jdy15A3DgX2b
	/YXVMGaa5qgjj4a3Ts9yc8K+/eMetWmceVRuMa5X5RIOlXxR6YO/GTHRFBCGzTXcx6n
	7qQqzHUL5r4CqsXfgZe8+GozZna7MwIy0WSrMXVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645839984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N7qhFQGeI5nCRixqF8DUByro64QWmopzpzX6tB70huM=;
	b=URnbdvjlXB1Jy0MPFGRawRHunuIR6ix63+grK6lEYQrwJyoW0poqjxPQjeZT0/p4
	ThgzZ4+4zHTnv0Zg3xqL8Zs0tCRTAdBPvYf2/PLcS0n3vSHqPCMiWzAWq76Ia2hHHwg
	WUZ+Jsv8Xz1wl8WNbwRmNHRQCD4O150CcIBrMvzQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33b5287d-6a0f05f2-6bf9-47de-aa15-9b11774b71c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95796ed302e003760e625c2497ef9cb490b0e5d608d8a0fc15bd5038f056b2e6
Date: Sat, 26 Feb 2022 01:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645839984
