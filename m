Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E762EED1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 08:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655110259;
	h=To:Subject:From:Message-Id:Date;
	bh=2eJWMXSUrZAZytGkP0yMiXh5WxXfeeqEl4LZE+JZLcs=;
	b=dPr3kJGTfmzwAsQc3cLVO39xKnC/NUrwRPeqxHJaP+6UcEJMGq1kDact/7d73pge
	P/m/ngLhqwO7TuIqOicRIJ7YHbnuBqOHNIynvnsnrOxaH9HlmPOz4dDiUXKOhjBcyip
	+9wZw8aZF7Cfd4iYE5l2yr5+V9j8xUbQQTYgVMAY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655110259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2eJWMXSUrZAZytGkP0yMiXh5WxXfeeqEl4LZE+JZLcs=;
	b=DKX6KDcL2OX9B4ng98Ap96pNGX6NlQSRdAvbTgHKSI9dqFugsny4dZQFTM9fZE0T
	QZ4sAUH6ujakQ9lZ8NFPU3feVg4TvhJ+lVFeJSSnFY+a7suuCQ+NuJA814KQ0Xl/vx8
	yL4BJeFLDl7Ltlj8Ls60bHcLiTv2uVAqLbKDGPT0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815c425212-d5f98f07-dd6f-4011-8c3e-a9715cfa6c11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ac39c238d6ea760b7712bee5543e36ab17d31d18c091d5fe187ea31238e85e2
Date: Mon, 13 Jun 2022 08:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655110259
