Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4997A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659020452;
	h=To:Subject:From:Message-Id:Date;
	bh=a48vroANI4izJKOWB0ULv8OPZlMNn0wdswNDxAh+iog=;
	b=FGGtAn69qx529XUigPS/sDEywLsxGCoM6dVNrAncKYlk7xPmEYVQRc8YJohxaKQi
	RO4Qb4ZcZxlaOCSYYS3lOzqvBdTgk9n7i4Ne5sI4OiJ4t/e/KiIyz+6w5dVXthT6zh6
	EirfobWY9Jv5vm2P7OuBtr0NmsAj/lPPJW042hrE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659020452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a48vroANI4izJKOWB0ULv8OPZlMNn0wdswNDxAh+iog=;
	b=SCbcRxMX1EvZBYS+MN+KDKYysYESM3+9+lnmo20uE6l5o7moIUwNJG3xjCbAfdP2
	xCH+TB32GjLKWXmcoZIqm6V5EwWwpMVglopaJjzeKoftUlXFc5LrO7FQeKcQQxaufz1
	v3yq8K6zCf8fFAVC5GrZVYXPCIC5ncPbUplmNZZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182455322ae-bf2e9ec3-6c6e-4269-91ae-3c42bd095a32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be60d712632f57fb6f09cbbdab37f3c333943ec9543cf626930edaf97b02e484
Date: Thu, 28 Jul 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659020452
