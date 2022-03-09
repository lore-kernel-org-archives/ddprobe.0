Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC85D6452
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646787084;
	h=To:Subject:From:Message-Id:Date;
	bh=lBezqv9Y44pCMZKq1dwUb1vip72CRyt31+QLDwH+V2k=;
	b=H/JHYb37syt+ZaiU5okdJjRhN63hMlEUpSMy1neRCne6OsF0lGlawIfKD4SVcdhs
	g0uhlzShwoWJB7/n4ce7iqwdRjrLhVSz9kaNKVNv6aJZJRuIKp93YKvVjjUuOhVOcFT
	ATWlMjUniTzMPuBRp/AxRw7J2PCaxqpD6O4Fnomo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646787084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lBezqv9Y44pCMZKq1dwUb1vip72CRyt31+QLDwH+V2k=;
	b=Qd7wpS+hRJ5dYJYEq1mEwiV1NAGULmLZzt5ZyF9VZOjsNb50eBNFGwlYIHESzgoN
	tNXpikOoId5m1QuGf36CT6iOWjjKhQ6DTjc4NYHnO3OmsYUEm41Iab/BUTAGUFJ7ewR
	gn2/HT6Ok8pJs5WQ26YkHwaglvMODqWKom/n7C24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c28c1b5-16ff88e0-6ec3-4570-8f47-a808fa0ca81d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28cd3e690beca5c5ce1ca8ae4d2eab2d04af92cc012d5dd7b706e20aef298f8f
Date: Wed, 9 Mar 2022 00:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646787084
