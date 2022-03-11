Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10897E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647000384;
	h=To:Subject:From:Message-Id:Date;
	bh=K2u+uKnVJdHFPI1fiBRa0RJrw8+14eLXqMXfgn9aseM=;
	b=BXT//58knbXICVmPgqHZ2XyuJAYVgvqchefUgU7r2GMAFMpmBBUlijbjOiFokarx
	Bpww3tl4umtCe22F2nfvhmR0ZKfP5lYMX8HEOcG/X8c9vY8EVF16m9WsNx2pU2MLM8N
	k0PC7Jmr9aDhn+3EedErFp1JdC81O9l9aIxyWSNI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647000384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K2u+uKnVJdHFPI1fiBRa0RJrw8+14eLXqMXfgn9aseM=;
	b=VJ1ZXnuKjs4IDJsUADcgx+qQYEfaciLJtaFipSF8B/cPv6tmu90GfEwObBGeCma2
	a/5CXqESriUgIvd/UHRaHwhpv3sd1rjjdU+niigF8FWXZLTYqk6QKfLACsMMI5zqUT8
	Olq3Q38fMGUbz61w34NvBz0qJnO3qhrTzpOuJW6M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78df74cf-4356bccb-8b9a-490c-825d-a9ff842e0968-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbea18481e772492cb69d76ac4458e9050d87a452008cadeeebc7e92e3c46583
Date: Fri, 11 Mar 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647000384
