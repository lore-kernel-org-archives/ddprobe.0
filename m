Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82049639
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660361452;
	h=To:Subject:From:Message-Id:Date;
	bh=NESXX2QyViHHXyrs23aHwW6ljWLdzQLMrXwMzRu8LS8=;
	b=eo75GpA5E17ftCH8fGskbG7jgYmgxlONvEGs24rg05tDp7w1Xnko9Ge0UohNaGc4
	UesxkQLROgvsXy0al0qRlaSomZKbRhHOyObb5lQVgJ5SZDvSIZLyFPCqdKrz3sZQJO8
	y+3XyTDNFStazYNIVE2yv4XVbp76egNKSTURG66w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660361452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NESXX2QyViHHXyrs23aHwW6ljWLdzQLMrXwMzRu8LS8=;
	b=Wi8tXUUFAqFSapl6tgEFWbk0hK3p1Cz/zhr6UdnXmOHMW7HHJK1Y6cprDznxw91q
	2BybdC8JTjrTMWfI94TkmSvCCXiQRjfSW0cWnB2UMzDUHjKpF5yMXGHUmgszAHjLsO9
	E3qR/C4QxROnnkmyyYWSMyByKAT4n4y60+QwR5dc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018295412c0b-04ed1a56-6f40-46b5-b963-ef826d449f29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d06481a64b95ce6e64fa78b05fb45479203607d72f70ff3f469331f7a26c38ad
Date: Sat, 13 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660361452
