Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74637A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646878585;
	h=To:Subject:From:Message-Id:Date;
	bh=gQyqrIjHWj0EZ5F+JHcArPvwQaTmdPC/cOTtyr8D3pM=;
	b=HBQczL5LxpF1GiGhwwB8aFxumvRRiApuQeZP77THy5yBvnSEpCWjLSdJ2fLJHOsj
	i2GwebOHS7c3eu6PEg28MceXgGMu/dIzQd650FziAEqoSjda5g2/8s/CQ1I7Yw/MOYL
	EyQNJdt7iV3ncPs0YX9rw/mTbMPa96AZF+rcQcjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646878585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gQyqrIjHWj0EZ5F+JHcArPvwQaTmdPC/cOTtyr8D3pM=;
	b=jX5zso/DZsagnWbEFSLHMRqf5nx0l4fykaaHfpV1oNLzj0k3naLALTtUE5lvEqUR
	0TUNqp9KAozoEVyvPmdAd1WKDvuqWW1RNtFaPdvGTm9/PVnZB92P3GoS94z9YQn3J4B
	rMa7dITryzt1XV2XO6ZCM/mTJhuvJhniWXKzOu4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f719cefdf-b46a61ff-cfed-49c6-88e1-ca601b39a2a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaf599914f97f28e46f2c996e76301a36020b02cf92ee59fdbb3fcf37f9611b9
Date: Thu, 10 Mar 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646878584
