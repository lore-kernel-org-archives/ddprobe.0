Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5A7800
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 05:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645593984;
	h=To:Subject:From:Message-Id:Date;
	bh=RZg9a5WBi259VoEjUwt3x2Np3L7KXBZF0nKCHAxbMdU=;
	b=a8MmrfUMCjtJfD25Y+3u2/NKGyAeUEc9KhN/X6wtKOWpjeexd0nh+B9hIC/PUXtE
	xboYvnDdMHYkTN5Y0H4ran3vwQafbKHZuToduZuhK9NigrjWMFH/aEGs7izPrLw0x2Y
	HY7I652Qed3Uot8T2ftw4SdiPohv+rR54ObxsW+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645593984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RZg9a5WBi259VoEjUwt3x2Np3L7KXBZF0nKCHAxbMdU=;
	b=EC40NGen4Z6x06gCPkaGRAuA8EE2UZ2bcT6SVIHC1ti82JYpBDD9aNm2i61291Qe
	jglxcTOoi7rzsqcCW5O7yp+E0gjMHDXkMuCJ7KigjaiNIkBqreDXHLNk9psYh0jENf9
	WJikiqn+YJIrEGEGbdBnjOu9L5mCuAkRVK+4RSKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f250b7ee5-af4aa52e-725a-4edc-bf81-c44d72f177c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64d9f59bd753c1290b37d505bcaf97d23fa4b451ce4fb30ab402c36ca0228358
Date: Wed, 23 Feb 2022 05:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645593984
