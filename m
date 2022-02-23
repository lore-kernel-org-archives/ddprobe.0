Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84C80C6A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645621885;
	h=To:Subject:From:Message-Id:Date;
	bh=TjlOXXAHP1tkN0VS7sMI8dUorQCry80zeO1BFNaA18U=;
	b=LtY4IhCUafxk18cb/vEdHKkhii11KVPzaXCzYyCPvnLk8R63jWOUMEq3+usWc2NM
	d7I+GTafsGGbTN7jHxaEmplC32h/uDMbJJwmFkh2IlZ57BKID0HYdRUGCyVqB8o6c/t
	hJlqak3rDHwhWqixA7SiMGb9ZTbijNGIZt1/wVGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645621885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TjlOXXAHP1tkN0VS7sMI8dUorQCry80zeO1BFNaA18U=;
	b=lLFJJ8/8JpDC4+STMXxsWp9rbLHdHRAdxpp1PXseKC3vpm+TVifyyhTtkL+FroR6
	awlTMh0rVGf3BPhxMCI65PQBN2LjdheCSeYpbYGIGQfDYAj1cms5YOZn+bXzUIOc/63
	vKh+vwZ1W5z3DPv5HoNANB7ORiNtdDMIjLRHhUUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26b5379a-ed059cd5-f075-44ab-b492-f57300107e6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98d446d8c584de40fbe59487cb030e29762a4b7ce885e56d5d8e37262d93bb42
Date: Wed, 23 Feb 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645621884
