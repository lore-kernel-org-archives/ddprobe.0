Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB827A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 14:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644849045;
	h=To:Subject:From:Message-Id:Date;
	bh=5bVsLUmrZK9IXG4cZXm/hXGeoVHh0F3Lca6Hd1wgEvs=;
	b=SOBdoOo9ShvoD7QeVukzjWoQ1e4x2x3DuKPqkWehPZZzqoyWYqFIEYM0u7TE52Hh
	fQCnWX0UTYjvlzCcPBmzBbhGNHflx5pG5LKhbDvTJul6Qgqko+de7yHoFqA+H86U6Ra
	WwPnK6St25qTfnagGY376DVlo4UyoLaBLZAv2iRA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644849045;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5bVsLUmrZK9IXG4cZXm/hXGeoVHh0F3Lca6Hd1wgEvs=;
	b=MXKtCULKtJq1kBSaBuKadBIIj6dDevgn4nijehhOgk9nLBanKVX9kT+tE/lOgwfR
	lxjX/O1IHCaHP4i7E5+EJIVBMhHPAF7GZybFar/TEvYQM7db554V6qkyrq9HDYb3K6N
	GrVD6tCpUaDAKw/f+DQEiqdrvdjqTYgVti8bWGBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef8a49f7d-d7d65859-7875-43ac-bd10-048d087e512b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 258c1f2a55d15a614a4cae7b302ff67cef3ab71a427e72fddb4ae905a8ce1db7
Date: Mon, 14 Feb 2022 14:30:45 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644849045
