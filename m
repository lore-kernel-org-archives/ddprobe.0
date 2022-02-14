Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC1F65A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 03:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644809438;
	h=To:Subject:From:Message-Id:Date;
	bh=MboALoLWgGjsAGnGPSFXJWi5GSCSfW6w0UiFzzUHeI0=;
	b=XB3hN1vEiFeuE0tT76bW9rBZQ/VKfkB0HzbTe6kGlV673kOFPLNrIUwQHXGJGjE3
	/cRmVuR4QTRN834iIyNz+5Xwpax0Q1xe6sFvZRZ4rDlhN94SAeDfHv6e8a9FT8qBCfl
	2DlRcvyMTpDLrSrt0wi5GTa68Pkp9SMiOzTPAWII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644809438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MboALoLWgGjsAGnGPSFXJWi5GSCSfW6w0UiFzzUHeI0=;
	b=h0cXMBV2KPLl0Ee4N+hXqOjGNcxbe3UUfs3NWYdckpfn3MP6I0vu7aEavFqFxiPW
	VAb66kcs/99D+m0uu6ASC7497xgApmU85KbSLRQQ2bLPPCbop6FjAJUy+Vu5vMyu5Wh
	duHce/bsSsgF68UjpY1tfGqjKeGP9pVb/fzw3bro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef64843ee-a5059f99-ae6e-497f-ad28-bac936db4eed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5288dc5982aef5f195fe8af70f0765c64d494d55269d7c2aeed1166720a0523
Date: Mon, 14 Feb 2022 03:30:38 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644809437
