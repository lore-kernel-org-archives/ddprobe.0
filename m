Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692E333FF
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645482384;
	h=To:Subject:From:Message-Id:Date;
	bh=r9ecMjmxPSCufw0BVZMJE3G6GDbhmjdG/c2+yMZcgC4=;
	b=bth5IsKdyfJ8IC9qzrk9U512cgqibthee99OH+NHSlLGLQ5FR0H7yg6dhdMVUHz6
	Zerq5dsDUXj3lFGdRIu3f7ho562F/GTPO9BKaay3dbH2wR9wvzusI+WChmt6UWfTdDd
	cTCFk/ngQHGFRfTU/8udHhfCauPuwCGWm3eF4h7g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645482384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r9ecMjmxPSCufw0BVZMJE3G6GDbhmjdG/c2+yMZcgC4=;
	b=f0b3TlYnon0bsxuu7PhSdI6RkR7BfFKDViA6mYXt1pGNQ7MDvpzl8wGH8PWJasOU
	nM3Lkk0a4YdblaJomqYvvd9O+ijb7RovCz4EkrQ0sss2iyHULB7J6fJ7r/eNmzAy4V1
	gAJBzUPZz6MF/p0M8FsGOImxTXePkhnNOk0h62T0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e649dd2-5c04d6a2-b9a3-4cf3-83a9-3572a39d68e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3481ceac7bcf1417ce8389b5156e9b53bc560a21abb70ab99545121a2b633e5b
Date: Mon, 21 Feb 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645482384
