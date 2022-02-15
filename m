Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9A11388
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644923484;
	h=To:Subject:From:Message-Id:Date;
	bh=W7Ia/9gjesBAFoy5nfvjhzhLoPb9RcaM7wOsQv2BwDk=;
	b=b9Ux3hcgTp0qCBVp5c0tWBRkMORYcRCRqdAW5DcqCjeA6Vk8JK/57Y24DQIHDBZP
	cjMNO2413YdfM82lXS7t26n3rFF+Y0gaevralSsQYa6be1k1e7JVtGNIpDLZCNod3u9
	2sRKH0sHSOhxmKuct8DQPGBR8ZvBiZh7Xxq9OJAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644923484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W7Ia/9gjesBAFoy5nfvjhzhLoPb9RcaM7wOsQv2BwDk=;
	b=MsrZFmEWynRcq7eKh1ihwAYJzGJFlo9VZMFQtrof0wFVLNO9zsp9g79wr7CIPgtm
	qhF8Bp+/lL6paJZr4/T8RQ7NWoC7AASj+dB4rOKZ//YTVDkKx+0rpuyB5cBPmwVE4ug
	VhcI5psyXROkJCYkoInSfLtsjg0tN0qZ6S5tXZxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd147a19-78509f07-4633-44e4-9d37-d504e47bd15c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de2db0975e05ab43d13f55b06c4ea2661750bffae9b1eeaa4ff33f2da9581380
Date: Tue, 15 Feb 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644923484
