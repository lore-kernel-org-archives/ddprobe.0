Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B918E6937
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645568485;
	h=To:Subject:From:Message-Id:Date;
	bh=bCPn0M7PuNPv/xPrrIxQhAt5S3s2kgjpl+M3hoiIg+o=;
	b=Pcohmhxej9Lw2sffWoe5CJInhukS2pCqqPrnggOn/omoXqkZE5SpK2Lm/8MSz4f3
	u2q72P2ViVnYOXIdZdDmr+otuovFQp2tXU7OvAd3QSTlKLHPH0VPRmKHfyoIeO5I/zP
	kkoklnr2W5ZhEOdOX6LurskYis1gJUAoc6l1JABE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645568485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bCPn0M7PuNPv/xPrrIxQhAt5S3s2kgjpl+M3hoiIg+o=;
	b=R1S90gMTWx6zYGPa3TWrIoocEqwGaed/OZkgjZmx7y+XKKXjBTbO6bpMPq0L2b3Y
	NZAAlT2dhFnZvFWJBQEQJlb2RRJrLGlQVCmOb/MXEgfB7+h9PHHQZu3ODZysdHaYLL7
	Tq/jwvL7w6f52qhtlTJATYpT1jbPZGHm6HLBceZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23866630-196ef7a6-735e-4f4f-bdd8-d023addd0b6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a74fb082b68b5f4dd0300d1d7d146688ff7859da233697fc90380a780e83cbf2
Date: Tue, 22 Feb 2022 22:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645568484
