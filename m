Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0087E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646355684;
	h=To:Subject:From:Message-Id:Date;
	bh=3s2sBnsII2F0Vbq8IkcKsUqyP2K9vgPFiVlFlpuna6M=;
	b=RyPSdyBpmOI9qphuh7gPebLeAwUjOY1ErkSPe/BjXMPMjkzYuycHZmaQhA92OcMY
	o6sSQKlaT/QEwJxLBXYU+TeD86isTUQP84ph23biAo3u1FXuT5RLY4O6J+k/jibyUuH
	3sm4CByqPdl0PeVwAkL+bkIpw8iBQk6CHD2VXICc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646355684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3s2sBnsII2F0Vbq8IkcKsUqyP2K9vgPFiVlFlpuna6M=;
	b=L1ap7vcVQE6xYkEwllqTXGd/LNwPR8uCrJYtTRAb4mazKSnP9mDMAFaITLH96tD1
	G8XfNMwV8o6LaKC1qJCw9jugdO3uVAVmH/zHdUvzFAV1Xsgih6dkThKeBBk4Ry3C3zV
	udrfhSV1QBNtZNAYbx2o1OAd7WCEI+mCQp5txdR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52721d96-b3e0e02c-7ca7-4d32-9fea-81f4f84b1faf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48be7f91d7667400e8357fe0b2ff1dd9d35c9d015e9617cce75f6ddb24bb39a6
Date: Fri, 4 Mar 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646355684
