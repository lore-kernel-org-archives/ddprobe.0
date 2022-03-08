Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87E52F2F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646767585;
	h=To:Subject:From:Message-Id:Date;
	bh=4iaPucMZG7DB9xK3lRsIFSrTsc4MCKAXwK5CZ8lCPp0=;
	b=RR9NeIQWoKSCrFdj/rpzLIoeI7OpoNPcQuAGN5gtAC2kGekorLd+xdcZJyRsXVG8
	0NDj2/hATKijua+ZstmXCI1ODxN5Qv617cz9mDjdijFlOXEJJEot1v2X6mTyJC+IJog
	NKFoMvHj1ioj9mAaqbzK3TPTpgxlb6G6DiaUY94k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646767584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4iaPucMZG7DB9xK3lRsIFSrTsc4MCKAXwK5CZ8lCPp0=;
	b=Y2UrFztPAtI2kw3OSnXrNfy+2UXyGYwg3cttIyeNdzEwAHpkW315uCBbKoneOup1
	VY3rRHffuZPbmr+YOE/oepMjQVGTS6N8PisWqCq/h3cPrCN6U3pJu782X2MToZ2ewWs
	UvIKwwFllx/kqAFLx01msLbgA/Zqs4LjDMWsCCBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6aff35ed-12216bd1-b167-47ed-88a5-304965be9d09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e383bd7f31454e0628204446213f41563415a65d698aa778ec16bf73faf456a
Date: Tue, 8 Mar 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646767584
