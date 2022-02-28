Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07A07C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646062584;
	h=To:Subject:From:Message-Id:Date;
	bh=YLKSGJrHrUkB0YnkTvMcKafwUGX61R7x1fIq1pI5Eus=;
	b=L2w0CMU8KKhiXNvurvhAuG6AIDUgrLeJkkuZoa7q5iMB++AMs+agLs6D75vYy4YK
	m/0UUNUQhuGimvf0JDa60M7XT75x6ek6aH0bpurFL99i+xREEMwyhbcTfXxuSv3XyP/
	3GbXpj69CW/jCbGo5gMfjPWCclzszAWKmPq5lxXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646062584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YLKSGJrHrUkB0YnkTvMcKafwUGX61R7x1fIq1pI5Eus=;
	b=exRD9K8ORwoqCGGJN/RVuELlnrLz/McpEzQycIyOwTWQ2OD9B6Vfx+fEdEcgXAX4
	tIkn4eOcGNsw0wPS7B2GC4ZjXGJ9dtcUtfMZYzMKng438uhEMGnZsH2WO2zZF7TO3nV
	Pz3uEQQ45NfD7M+d+eMvazdBp0lvSyZR6exAwy7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40f9c385-37a719db-0314-444d-8661-cfbde0fff5ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e76e4054088d656813a6e1cf9f6257cc90f9952d759be93c04fc272e713a165
Date: Mon, 28 Feb 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646062584
