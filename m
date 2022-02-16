Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD2A0187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645023685;
	h=To:Subject:From:Message-Id:Date;
	bh=0vItyqeer4cOCRI6AwjO/g8sBw1GhbSjUWoTFgy8+qs=;
	b=hnKrOGzsjNYSAa2y7UplA+Nw147aEQK23MOVUHiGCWPYlNeFYm49IqHfiDZqYtqw
	G9zIxEMJf5bldv8tFoqwRjB4i94CRl/h9l5asnPCccuvzRZbZEXgKGWq5bvvgT2K0KU
	ApP+2wt72N8j9AKSCnDOGr/9vv6dOkZUFJsKBYuE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645023685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0vItyqeer4cOCRI6AwjO/g8sBw1GhbSjUWoTFgy8+qs=;
	b=a7wr9rrpQp7MPc5LgLXpIpwuMrvXmORhfgCQ0bcfxaECy9O29hcXxPVbD7qQyLAX
	VHQVOXHTeTngqXkw0rh4OpO/4BZP/x7mrh76woBygNms899wiv/xURBfNd7gBVvcef0
	puKHXAP24LzGOw5X9f9qe1Q5d9ZX0dxpbgDsJ9/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f030d6899-a7d0e6ab-8805-438d-b2f4-b19ce1ce8559-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3034c99a84c31191f1b0782fd90512ecc26f10f06af67d2164209ee78739e7f7
Date: Wed, 16 Feb 2022 15:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645023684
