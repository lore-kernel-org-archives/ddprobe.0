Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F9C7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 17:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648141438;
	h=To:Subject:From:Message-Id:Date;
	bh=T82WS5qZbyIHrk6kMXVPzgBZ3m9UOwmuXTmxArenVxs=;
	b=AgyEU0Aw0Vf6mYa6kE6vNg266OmBA2cpGXj9moUIhW9nvtLaJjGpgtp7tW7PDgbv
	k/IV9XZqYwCPmDwNkRVcCSW/bYn3OvT0zQkgQ3X055xEXcZSX9lmC5oUgZti+1aa9uf
	LPvLB5J/M2zp1vCXFh2Re+7EB7P71qzuwbyLslCU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648141438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T82WS5qZbyIHrk6kMXVPzgBZ3m9UOwmuXTmxArenVxs=;
	b=RI4k8BzJGF1jCLpqrGRspChDXkZSi4sqD1tzVkd4Xh/3s0WUseD+LBRu3RmJxwgw
	DAcLGUABD6/8koy2XQFUViPowWhK/sc3AlnD/rer6wqwiQ0aA8GzeVvVCJ85WPd9ozv
	qoCOJ9GIdpy3vPRJtYny5F4+tsZ48KtsL5khg008=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbce28d59-aa50934a-f9e5-4c3e-b4e8-134f8a3d6712-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a00f2bb631828d6cbbb9fe28f2986df43d8be9feb4b815a3475b73d86f287ad4
Date: Thu, 24 Mar 2022 17:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648141438
