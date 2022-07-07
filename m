Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C0A362
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657177012;
	h=To:Subject:From:Message-Id:Date;
	bh=MHx0zNjTb3+m6iiWMkxczfjuWkhfdWS2ZbzFcEw/1Ms=;
	b=EGrJFlYbAS5FPgy+YsnaAqRHYJ9bPCkc9OQ+1XueX+uSwmX2PJi8r9VVJSDJtQBS
	/rYuIH9KeyL99Z4qswot0HhSbocLz5xz3qJZBi5ZaFiL4wjkqnfDwM2MoTiLCuRB348
	L8Cpw8VYA/ivvAz0C2OBfxJc5Q/yp1rWEiwV9ilo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657177012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MHx0zNjTb3+m6iiWMkxczfjuWkhfdWS2ZbzFcEw/1Ms=;
	b=Jq+O+H5mtMWkzA6UXoaoffXnW0wl/iqi5i2rAqWPcqdJ9qwHCepYjC1XRMVrswL7
	IixWwktV57ZAIsJBbIXEU//+FFAldxcJhoPdrvC0HMb1ickdsQyaLFzHedXKSZ3lIix
	ixBf0zEx2/6g2nV3+OXCR6zXu8gvaZFg+5mtSu1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d772789d-52932d20-1901-4417-b965-8c273f2a3cea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 679bff439c353ea9ee6959c89d3bcb671c8f9f33249285f230716024222312db
Date: Thu, 7 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657177012
