Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42DD7C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645806385;
	h=To:Subject:From:Message-Id:Date;
	bh=DFydlnSkKdtMmAvBINZgIqTSeyIjWgz5WtWGedEK9BA=;
	b=WCgSmajQrEJlikdL9vld63qTfTinO1x+6Xi7dMMS3yfmtrQCsVDSDD9n1d21Pp+E
	8xbN5GdTk45NrXVkTGcWcZ3PO98Cgspblfv+t8EywhwXOfZ8Bk79m8XSr3tUB89w2nY
	yv/SbL1Q1MXWMVV4Ddw5iImN1dOOjrzxMgh++7o0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645806385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DFydlnSkKdtMmAvBINZgIqTSeyIjWgz5WtWGedEK9BA=;
	b=AyaT3JbCCRvJhTFnoQsx4FaEAV5pxBD8SOhjfk6suOGevVU2Nq5D6Mv22pjD4ocF
	ukiqSct0eJzsx8ucr/Lgu5mLJ/nomZ176E8o8RjqURhW/QUJL7YqZPnfRsWxyOB6veI
	exeMY6ymmF8UavencbOE2KRrfJA/Xr+lxhrLmjo8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31b476c7-c6c0ead6-05c3-48fe-81a7-3287683c893c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61894ad4a36b3c16778a6677e0fe3ef8fd46fc0b6efd40dff25536dd01c8b7ff
Date: Fri, 25 Feb 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645806384
