Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A447A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867349;
	h=To:Subject:From:Message-Id:Date;
	bh=Pnz4gV/ESLrOvNEs3zn7f/VRKampwhaHMzmwl4daCjE=;
	b=E+pB3Z4fn226OGjW+S6viejjzfbYtSsFrnB8GMLEHGuS6+A6eO1Quygh+8v5nfwP
	0AZKWT2Yq+ZTZp4/+6EFNyuGHd6fd8sNkDX5bLvQ8EIrsq0Epza3c1ZQDe2tV/ecQ/e
	wWpJRx0aQ3iKzCaM/VHlkSgrHipnC7ZSWi7amO2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867349;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pnz4gV/ESLrOvNEs3zn7f/VRKampwhaHMzmwl4daCjE=;
	b=dNgxdT+xBxchMwMYHbrSP7cL2hrmmlj2YF/2+jXwZWNf6cYL/rQ+9plONdk0HkKR
	grs8fKN/taiSeevtGZKM1yNU+Hg2CwJHzwtn/wv347CfqHPYYp2wT4yieYdcQQsSKLV
	vYSdnrZmKAqG01sWctQblrzz2N4VkDi5n8rsBpEU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bbecf8-eb7684ad-d1a4-4370-8727-003ad4baddfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa2fe227f761182527764929ba0917b88327360afccd07bd75dda7aac47b7d76
Date: Mon, 14 Feb 2022 19:35:49 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867349
