Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3847B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645829185;
	h=To:Subject:From:Message-Id:Date;
	bh=2SRIV4K2XWcUCTsripvSitPsqVgL+58tQJaOlxX22XI=;
	b=RaNaXr24zIpg12I057JQl41P5afE/0vRSZrYgk6dRxUDUHmWC4G7it5hcxWEdDPW
	ng5Rd+HkoSkyZyUPTXzmhQr/4PcwM4v5V7Np++E5pnOPnlOk4J2SundAtBVG+I364pv
	j5qoWF+f2p484wbcBzkK/imIpxS0uFUUR5qfuo3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645829185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2SRIV4K2XWcUCTsripvSitPsqVgL+58tQJaOlxX22XI=;
	b=NeNe5yWXchrF8beIQX7L5ltxTrM8Qqp/y9hzaPiim3t6Z8v3qs39wfbn+TS7wUVO
	239NQp4yv2Nf8sMcco/EXhQvogQHtdLfgxcVZJeFEuvXXeBYVgkobS0BH5DqlL7rVYv
	6I+TSp2LjYEYJBmyYOVf/kzZH5UX/eL7X+MmuZ5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33105d0f-057087fd-b499-4360-86dd-0586b22fc1b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88c5ceb25e4b7d8655459ad6db1a3c474220ec771353a3c57fcbc9c32523d8bd
Date: Fri, 25 Feb 2022 22:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645829184
