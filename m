Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC9B2F21
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646328085;
	h=To:Subject:From:Message-Id:Date;
	bh=fWw81UZCtyj9om7/HtMyIw+JJ093EBV8wc2CJmVzN24=;
	b=LQxwng7qk+K3jXiAZDu1MeQutudpUdjC/jGr6QB2PV5l+bvtleJpobaYTE1jkSDI
	86EG2ALNcG4ivQ3bNh5eVg3DzPGhIwMmCbQzL+Li2QB0xrVeSwrbQ0xM3xlWqU8UbLm
	2M/QjHdGjKvysFBZ3PaykUPuCPeHihLOgWOuF9gI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646328085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fWw81UZCtyj9om7/HtMyIw+JJ093EBV8wc2CJmVzN24=;
	b=DuyZgRC32Feb7WYVF9K1j/GeiIb/DK/b3vobqOw90w2UCAPD1f6F9JLzKLGd0Wqq
	6kDuom3vqHnPb4U9hsaF8fVRNLnZoU8DRyRbq/j9PunYMnZYEq/TQZfdqKwrljgfF++
	VMsuzAcF8ZaeUTGnbnkiI2vR8NeeIByL6Icj2bTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f50ccf8fd-10854ae0-49b6-497f-a01f-392d84a79ab9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ce458f0684f0689a82c93eca288a0d2dfc89f871589d76fcc186ee8f2683dd3
Date: Thu, 3 Mar 2022 17:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646328084
