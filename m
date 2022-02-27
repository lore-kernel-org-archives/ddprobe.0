Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD152F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645947084;
	h=To:Subject:From:Message-Id:Date;
	bh=aFBy62s0rWegeKfI9oGbJC/x6vDho0NwVJZbfsYamF8=;
	b=CHaVvage2Ys1vdYnq4x33dQ2x2gpkw09TUnrcf9CRVBtvRTd2y40j1Zkr5bOrvhm
	XQOGJTFDwGvYmmDemahzATXTqsYl0BgiAMjpG/YQUuDE21EM85HnzUNYn05mR6Nlziz
	a3h/TRc7nINAUxycOeuR69blIow2+hHjJt/bnads=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645947084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aFBy62s0rWegeKfI9oGbJC/x6vDho0NwVJZbfsYamF8=;
	b=C/Wri3u91x+graZEBTnVzD4Ds91VYzHQgVbpogVpD9KrijY9IpP803+sxpb5LfoA
	2+zXzYNum7hyWcIRSjA/TNHBEU/KoQ71CP1jrM4XfGK+SjN2b3UG/RaQeoUxzQYZ10M
	636MwqZkXUxx6U0u8mQXIcfab3vJe04w1aiYz15c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a175fea-cd0ea99f-eb63-40b5-9450-f78845501c70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 458350b0dfe3743c99107dcffc39d848efae9cae0b4e4214a38aafce441e29e7
Date: Sun, 27 Feb 2022 07:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645947084
