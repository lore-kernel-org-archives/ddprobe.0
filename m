Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC31D7B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 17:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645549885;
	h=To:Subject:From:Message-Id:Date;
	bh=HM5qOkoz4vH3WgqrulCQoEzWSMXZyXPOh2tXTvNmYe0=;
	b=lv4qb2OXW9SRL07ilAU/jHMmAKrvaRb4n+CBsDw2FiBNfxKwTgCBaR0pG+8GHeNC
	cCSiMog6Gat0l6hLW+7IccO6d5jeBnTMVcjMEm5IkB+B6isy1+j+Io62dZiVu4qAvPO
	6hnKUjnzzHL+BhCrw/+YTw6IqSBE7vXaW90mwJb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645549885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HM5qOkoz4vH3WgqrulCQoEzWSMXZyXPOh2tXTvNmYe0=;
	b=GxFuBNGRKWSvfh0G72SU3YeHxAra8lCGVpcWetBhY6lGZwRCpwm+MHb7x+x9IRb2
	UIhE/AuZnLmDd0Sui6zsfaD2K5EoO2AelvyvOIaVGj7Ki2P+mJ/yyV/8VFyGMpBBdNy
	CuGZkoYKCEwwHP1fgovdN6U9sqez8gKipqbSh1gc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f226a95b3-7486b8df-6678-4f3f-b8a8-e0e70ff5e2a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55820c29d1b50a9d2d492541856392561af86e38cbcbb4dd7a2e2e15d7649586
Date: Tue, 22 Feb 2022 17:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645549884
