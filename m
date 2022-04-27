Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19631621
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 01:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651024618;
	h=To:Subject:From:Message-Id:Date;
	bh=nnd56tJbo4rklm7QhqYWLwD7VKpZGnuHlmfFg1aKqKU=;
	b=NQgLOAZABlkOHXj0FBmKyI3U9SJeu++UOIlxXipBJ2exKUygGdDj3bFzQ0mjHDmd
	05fIyK6/sgCspYrRJW1PPRCiCNDex3BYPRa0kjrBpUAZsoOo7pQw00VSpyXZN6VOps6
	sFWY8aMDRSySfPtZUAVzACyQrD04yaX/MiMHSZWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651024618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nnd56tJbo4rklm7QhqYWLwD7VKpZGnuHlmfFg1aKqKU=;
	b=SzBs/J9l5ruj1nFM6lC8hxccXRHoR8ebXh3NveIZVHahaaxz0UQsQxuKrprR6dcX
	8vNCSscP6vBC6f3eaJKlJ/dVP2giVYxX5ithGe52xdvlJrXJwX3bGXUWo/75v1m2IFW
	QJdTdxSEF1IDXbQLKc/vZvzxGcn1479qHWCPE2uk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018068bc6352-57ab23ed-91d3-4b56-9556-c942e5d05978-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cefc1a54bbd71f24fabcc12d2abd21ba7f8cdd1626dc06d68ad41ee020d453bc
Date: Wed, 27 Apr 2022 01:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651024618
