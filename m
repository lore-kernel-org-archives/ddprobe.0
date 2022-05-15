Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F2A2F5F
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 23:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652658059;
	h=To:Subject:From:Message-Id:Date;
	bh=ElChMdawt2BGQgYxb2N+Pd4wHoCFNq/vXWcBjPYKriU=;
	b=HJlxhSOZo+auEi9rX1nACUjhv+Q0ngaj1mGIiGljdxBSDauFHqR9x9+x3a/HcrTx
	6jGkb3jR+s4goZPbvrkkMs7c0xNJDasgqo5Jx+LgREAKSCsut3wtEfYQ6Vp4KjO3BEx
	370Gl115NIq+P4yjWuxh9wlMcpr65GfQdvrHTZMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652658059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ElChMdawt2BGQgYxb2N+Pd4wHoCFNq/vXWcBjPYKriU=;
	b=NF45eRPDQz//inT2NrsyIH8O/GKZM7Yhn7+H5r8GwBhdKHqmCcYFgUsinipOARIW
	zI7d64PxFztSFBgjf4rfpSei2vgHJsAM/+VQxZ0YVUvqhMQ5Jo2NXDvM6qqyLa+vl4p
	a6xrGWTdlEYoCaBfQBufhcQSOLUAyXEeqUCn59vQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ca18b7ee-7cd20921-f4ab-4806-b5c8-c9a3234ece77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0c0748b74ab212d92fafbfa763e29884ace1617ba9e96539caf66faaef2f633
Date: Sun, 15 May 2022 23:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652658059
