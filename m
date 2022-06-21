Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AF2ECF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 13:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655817479;
	h=To:Subject:From:Message-Id:Date;
	bh=yS1AKxrUr8+eLjl6u3GPy2ywaYYH3eXwq4IwgOEdRNc=;
	b=JwSXSiW3p9yd3XhcVpPGG0Ib2U9MSEAs/3JKVsm02kfTjkP+8auT32UyjW4g7O0R
	ReDKCbaKU03RlyrxDWFw/rM0307gyKkj81N2luta9JiePffSs4UncpJM8duY9WT04Li
	TxyktITL06IgpASQFJx5x8s8cIVZL4jLDOuhXNxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655817479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yS1AKxrUr8+eLjl6u3GPy2ywaYYH3eXwq4IwgOEdRNc=;
	b=WyCtURhKUIWuZwut9dNOQsgCe0EsjfwL/D8U9quUoPy8YuANX8ZYjUIufD5OXX53
	1fVFvMIuiGlsjA+9aP1s3TTHKRohPSWetWJ2vF9fMPT0EvOJbOfINTD0eiixWQeAOF4
	odRkXfMEM0umO8XA8QpD67yD/V0TxUNk17gZOT78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818669a444-a1cc213a-4975-4b34-b60e-b1f9f4eb0be1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5c3ef294864671c8ca665f30e825f00c208ac240e21bebb6503d6c99e427720
Date: Tue, 21 Jun 2022 13:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655817479
