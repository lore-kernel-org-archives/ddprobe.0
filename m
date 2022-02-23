Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 994057A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645599085;
	h=To:Subject:From:Message-Id:Date;
	bh=GM4We1bRSqSF2aPnIIJcPywg47JGHsRD5Z2RNb2l7lY=;
	b=GhOIt+GUgWvDu5unqTNvNIGvS96CieBCs4ffbOp7SwvhUQNEOHBo4abJHZcuCnvR
	wp+j2XSAp/CY9Vd9wCndwiUgIs6w3gkKj8HpSSv9GDGR0nFSQ/EFNnecY4+fvLl/iKm
	viDueYpUD7O8WiRroiTkxgUgZ7VA1uWjvOg/aUBU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645599085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GM4We1bRSqSF2aPnIIJcPywg47JGHsRD5Z2RNb2l7lY=;
	b=PP2bwFfrmgeoxawbujvzLiE6jS4CGBeq51oua4ZsLgsjmuCgBWfeY9wa1Pfv5gNw
	IfkqqWraQJ+qI5M2+ofCECzTOwfLaxP9MP1oKhW7yImnh+SOUCsfeQEFGu/vB/lcGe4
	b2Dovmbezp/G4o8j+CflG+mWEbRumPkldikfNPd0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f255950da-031b3f60-6c35-4fc7-b347-c11eee397557-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb68d0beaebf2eed67d2674feaf79072edb08d0a2d1276116769ad097ed47b0e
Date: Wed, 23 Feb 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645599084
