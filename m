Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B227A33
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646389284;
	h=To:Subject:From:Message-Id:Date;
	bh=yqAwt8vFFoFqGE/4zyg4VgDn+ld8GEnZULjsm6KdXhY=;
	b=fVsNKJeEhkt+0F/fyy0AmbLG3ri+haYR/WktnnUDNcso1B/elc/4pT1ZBnwc7hS+
	wA3bEJAf80IW3KYeS/B88CInpNeUEbUnvvdmWm8hPRYR0qFHWAZ6GeovDfOsEV4T1Kl
	H2ZW6xNe3zWKR2OkeoOud9UQLiyu770UoRV6DhcI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646389284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yqAwt8vFFoFqGE/4zyg4VgDn+ld8GEnZULjsm6KdXhY=;
	b=DmJaG15SbO/24ch83mvb4QrdlpfEzWFaTzUq4c6NpqRSdtEasLygca2TelYS0s8/
	jkDEc6j2LmBcwxuJcm9HKldZowqPPlz7lPd6+z/NgH2sKBUMav/f7UsLQWVmRe07ooc
	/7kW5Hyi+m0CJfygf1Ix6QSdsEGZY/5pkpq7zH10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5472cf7b-51a2e9d1-ab0f-4305-936a-c98d8fbe6005-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2371a9ecfd4f875d553d0336a34f6bfbc8db97b247eaeb127bcecd0c9505b11e
Date: Fri, 4 Mar 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646389284
