Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A01636E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645527384;
	h=To:Subject:From:Message-Id:Date;
	bh=AebeKuXBM+muPI5VJMDcxzjlv8laoftlfLpROVaslts=;
	b=bUe7otC2DN1C3nm0MnAX+UKb/53wzYvctvRVVSiVRwYLPxxp3Z/sDDMHrBSZoGwZ
	sqLqIaW5M3UIOn25ncmULwE5nVWMnDyXR5eOPFFlKzmBNKBrerC4Ga3/zxIOw+DnJyf
	+4Pkqw7EDHnFmi7K7Lpp1c/0hQ7pjyI384zxh5oo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645527384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AebeKuXBM+muPI5VJMDcxzjlv8laoftlfLpROVaslts=;
	b=T80ddE4w6Dtti6itj9a3w3PjeRCeSw6u156A8P9uWwm32pgZJDmkEjs1/TZ94yLL
	uB4enmTC00jPJ1HxwHVKbXjsoj8tkugN70JLxGtfCB10HSxrRQk9Xkb4tN1NabInvBW
	GdgHwIZGted0VKZ8pX/N+Uj7RjiLjiHMTci1SXZw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f211342a2-825c141e-76c7-4e26-813d-2ad035dea2f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ab2d144581160b295df2b1b97735c15a120cf799dadf04934079bc5d6890723
Date: Tue, 22 Feb 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645527384
