Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6DF7C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646608885;
	h=To:Subject:From:Message-Id:Date;
	bh=sI1BcRyiCUuOf6hlrJkaVtUZl/JP3ZOUVj7qs7L64sQ=;
	b=FnuE1pNCoTRuFIK55tK4dqBJz4Tr6UxzAoHtRwuU6Eyy/2qngHxO61+Y8ZFi4HnM
	heN1gNm3Ue3UHcqTGZfWlvFg3DsSc5z4gQgrcP3WxIrPqMfXNdvo2diTNu6cmeQtxpd
	aiitd1Qpqx7ODFy4A3g2I9Sf35Ze4t8z2NooYgmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646608885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sI1BcRyiCUuOf6hlrJkaVtUZl/JP3ZOUVj7qs7L64sQ=;
	b=NtCVIxmaXK1xQ88j6FeiLPYVb2JUOQjhYcltmjLyp8IC2WNAoax5V3IEmcF2BpEA
	GUQgMJOvZ6soNwacdECyNAWdNQekDSZLC/nMM1iR+Zm2iIMRd5hRVYR1RYTN0O/DGZ1
	Ib2T5IPXl1FWrR7nKkalHSehV3YzVxjQAWPG0zj8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6189a4b7-2a4561ee-7dd6-4e05-bbb7-cd8306e9d5ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1596955d69e85ac2ae363125946d3389581f25892f8742af1c990051c34327ab
Date: Sun, 6 Mar 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646608884
