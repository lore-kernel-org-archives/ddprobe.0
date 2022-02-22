Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D552F4E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645564585;
	h=To:Subject:From:Message-Id:Date;
	bh=M3hI8u2/NaY2DFlqOy/DCBerGTUVhUAG+SIvUW+Uxvc=;
	b=a6h5fv4pS1hijSbtxWDRAISL+cRofEINIAC0ddJRUOLjbNVSEeD5Cuj33/uedTm9
	qlGXiJnMvCXxl2BfsJ2A8xbiKOrrY0zzNBHhkTyndWVclUppQAgJCapjtHqpanmj8Yq
	0KXGOzLyw/jQsT2GHcODwC7oHz/kFT7+vlz+3vxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645564585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M3hI8u2/NaY2DFlqOy/DCBerGTUVhUAG+SIvUW+Uxvc=;
	b=S4RjxrwDxUy/7o5myauhCOMILTCEbtj6Z/lCnhWrJnBVWnsGHIUVgao4OjhBHtmw
	mw7e7xbB3514Cqb6yscDJ0cOuH6woSNRuAHHVoZKU6ESPedjRE/E0R9O3g7JZWpD1tb
	ChW2dPce2/8GAAgfFowFqQUHaiY8bfYfWfN1cPpY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f234ae38d-3fd8172b-c93c-4a73-8bc0-11d60ee402af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 715783e853a8cbdca2e2443d4b910c4d5bff22e79196da6c29d91137a1d8b59b
Date: Tue, 22 Feb 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645564584
