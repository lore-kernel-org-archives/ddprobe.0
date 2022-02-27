Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87ADD2F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645952185;
	h=To:Subject:From:Message-Id:Date;
	bh=HPD9Ge9jxhqHnngQbD4Gqyb82SfdpO//4KZokDNlCuM=;
	b=BXKxZ0xqJn31KC2lSU/+Wi4wb/2bxgSR4itPYoAvRXVrCJJBKCmIvms4NG6xUxbW
	rC/IgiPwrYlCPYpg6MR92cEo41uKTlF03W3kPGj1YZxsFBDmdSS562c0HUgRyuGkUpq
	Bq5kq5ob7tAmyyog96aWZkRhUcNTWzCLVS1JYM6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645952185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HPD9Ge9jxhqHnngQbD4Gqyb82SfdpO//4KZokDNlCuM=;
	b=PvWdgfQNzOb0LlbaBs0HyYqqewA4va76hSZRoEOzF/pex/pVKapoiR2mUjoJo/P2
	FCErrXYi/gLb9hJnAt8Hl0HN5uAR1iGyh0s4vlkhkIFp90PWUUE1UQnjbMGq2S+XCdT
	3rQCHIBuCVR6If9jhfNYrV+QD6tTl7i6yRTsC8PQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a65320c-c5effef3-a287-4adf-a037-fae0ad56a47e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a02c3e6163abce275073e7b796f76eed2a3e6ef1cb7e252aee6004c845b2537
Date: Sun, 27 Feb 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645952184
