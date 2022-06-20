Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D3881B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 13:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655732999;
	h=To:Subject:From:Message-Id:Date;
	bh=mrC1ZMqPtxa0D2NnxgHGfNtp2gw4Re7WcClcuT0UeEE=;
	b=X4YuWlzIED7NjqURy5JnKlKLOTPkCMnEECGrUsc0SRLzNFzBkel2Nn94opegO32P
	IQBxj0dehcP0bw5Kuu4hsYmA+Gdjz+Rjm7b2a9LFod67C81/QvthZKfJt2CHxBPducq
	P1Ptp2EwfOLyYpfwNWgG9kwu+NoQv+WtxEXqYFP0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655732999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mrC1ZMqPtxa0D2NnxgHGfNtp2gw4Re7WcClcuT0UeEE=;
	b=QPKJ6dZD0tMWO7o7CLK4oB4y0BzCxpQrPowBQbBU+d/NtC4KQXu4Z1I32YEpT/bf
	iU6Nut9kUCMQ7J9guTa5otNAbhtKGFvekEX/mVYOeI33ZqWq+LjT4qwuHS+NFkHCTeF
	QsJOM4LOCdiE+L1Zidc6pqHD5GH+IyDpoXL2olqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018181609428-4ef8ad43-8d97-4835-9c77-d660077e7051-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d3ceb7126389e15873423929837e4bdb7a6aad19a54b7f8e37348b2dbc59eed
Date: Mon, 20 Jun 2022 13:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655732998
