Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECA82F23
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 22:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649888218;
	h=To:Subject:From:Message-Id:Date;
	bh=dvtWKESXj75FTnFF4IxH0RPaIYIK38bfej5KB79xRe4=;
	b=bavOnMva/YQudOhg5vpWOGW9bX85G7ZlK42DnRxWuamO2LdZVyy+ta1AhG0cXcyY
	ufs9kr8QatmhbPHucgDUEXaSPQAAtzQeRGaALBORJWMwbbT/XZBtj6mwPgdSIbEfztN
	7GcVF2qAKsObAdIUFvg4bWe2AVM5akJ37PLdyidc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649888218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dvtWKESXj75FTnFF4IxH0RPaIYIK38bfej5KB79xRe4=;
	b=fjZbF+p++usZ5a9dkhCma7SqMeakZd9EeVZuZVHX/ASzkpb4DxeSZ6feFDOqgBfR
	5VteOmpvLDbqeKxwRmNIj7O9j/Kd/yI5tWrEIi8WCejsbxe9nX46Okcp5yXC4xW7iw/
	6UOsRCSkk95Lqw+HLRGU4MvB5Yz9nNs9CIA6dBfg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018025004cbe-823da926-2d67-434c-9417-4d91e1cfedab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74e418030c60b51e97974ddfdbbf6a9c9cc6027d3400a78838ee91ed709c5d01
Date: Wed, 13 Apr 2022 22:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649888218
