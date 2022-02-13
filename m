Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508BB7D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 10:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644748845;
	h=To:Subject:From:Message-Id:Date;
	bh=9+ytmwcYxDF6EQdnipUAUoq7/ryyoiog6JZv6Nw809s=;
	b=mbiP1W5umTIRCc9ol9uNW8q7MsZtZdl3u7OkGmlaEPRPn7Kqhk7+UFQNy3KQkvij
	SiLypUN3nrMVcx3Gn5WiBg/yh2CwzzKApCOdTvuIp8Fuqn2p7XB86nBgxfdCGdF92/7
	7s3kX6VfIXCNl3bAyeT8kCNUdv2Z7yDISG8fYAi4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644748845;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9+ytmwcYxDF6EQdnipUAUoq7/ryyoiog6JZv6Nw809s=;
	b=kz90IfCQA3MbGhlsF8L14+1UsETKlOQyVIPQGK+HNXo27DRavLUQvoer/4U+Sd46
	+c/Sh7/qMcymV+75JA4JdnLTUEOBJ/lO73oPaQOq3Poy/mD8g76HEJCjVjczcoUG9Lf
	ZeZKunMO2pQOjsYLsELTFSsIfMMD/rbBCOWvG+/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef2abb1de-a08e3fd6-1238-4b39-a1ee-6593ae0baac6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a89dc5ee30ac97889bb55758b40f6bb28ea9610eaf13b6f4d95a41bce5fe830c
Date: Sun, 13 Feb 2022 10:40:45 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644748845
