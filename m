Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8777B28E1
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645885885;
	h=To:Subject:From:Message-Id:Date;
	bh=P8qakD6IOQ20UhQ/TLr2mWQ3p6YVYLOjHUMCFf5152w=;
	b=Q3r+t508yKvXBOE1CdoLiNyfqr2WRU7GEzwJ1I9f1c+yjT9pgGv8vahEzBqyUF2+
	ZDhotnU22+5bDBUJ5wvzsSc9j5Sh1fXeTn6VzipyJLqmhCAQ++Gw/FTi02IfnDAAyQf
	YlTdz5tk8MIva56Nz41FqyE6XFTasm57W0FzSLYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645885885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P8qakD6IOQ20UhQ/TLr2mWQ3p6YVYLOjHUMCFf5152w=;
	b=HbNgJqBIJN6aJkKOJQECfTkBw2/5VhQJZivuhszSu5NWlub9OWYDQt77oJIoBkTI
	SualG9RBAZtUyVCNxO9X6cvo4KiHr77gGOAOElwk4C8B5U0k6ZFVaMzarJ23braNCfC
	9LFfMCmX8sKfL/tYli4J9fos5WppXn4clvBw+Xo4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f367189a5-fcc4ea23-f170-4126-8de6-ccb0795ec4c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1132c9b2463481fd53105e8547190ff20570c34d4a65eb432c9023c1eea7afd0
Date: Sat, 26 Feb 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645885884
