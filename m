Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9EC7C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644953485;
	h=To:Subject:From:Message-Id:Date;
	bh=n6DH6MesSRbOFMtxIz0eBjnWFDdH/zgC3SxRSgDrwfg=;
	b=aZVJ4yZgX9r0jW4UGqCUsQ9ocV8WGHr54qBEJC/UhXYUILz70tRvefxiePxRzRCJ
	ssnEiC4U4Yj6L+Na8YYlqWPDFObYF4scdTZ4aqyddClH7Udx5DzrBrYyKKaUuSLUkNX
	pHBnu4BpYDl9sO9EV3aFvMzZPjxKagcjYiEvz8g4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644953485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n6DH6MesSRbOFMtxIz0eBjnWFDdH/zgC3SxRSgDrwfg=;
	b=RgQ74/6FW+QpnLKJSBb3xpMRvL32+Jp9pqFCmmsNj5mz20f1TWf+3gNugfYDhS4Q
	qVBdP7rrj6H5nunCFmBFeIE8WPqd81Yt2qzF4omPlpl2wCuaubqK4LKmMnl984rXsgr
	1phQh18YKHR5cCil9aHpWepUq/1rvaKzQuXoO0/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efede3e5f-4e65e041-943f-4a0d-b931-368df000a2c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fbd76f4e21c8a03de464a510cdc8ab90c936a6361f1da6dc3edbb9a55fced78
Date: Tue, 15 Feb 2022 19:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644953484
