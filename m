Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755B7460E
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645145784;
	h=To:Subject:From:Message-Id:Date;
	bh=iJ1sR0/2SABEubUVrKhZ/Dd42At++yyZ5Ibw7ZPYUQk=;
	b=PrmvJR8I/42c6xKHzN1OYyUZJnhwEWOYJnU/Mn3FB/Z0psaOLg11/72eUeNrE+C4
	BdCijFSpuDLa1d+ef7K/FuTYvKp1nk6iCDWeATi0dABRN2R0cuU6gPSRiRveGHkME4B
	onNLd7ZO7JdZjX8GtjZqoZUN67oDKaAOkHdc95QU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645145784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iJ1sR0/2SABEubUVrKhZ/Dd42At++yyZ5Ibw7ZPYUQk=;
	b=OHbU3fX2rvzsZTXACcntc9frAJZbmTQzZO/RpeC+2FTemq6YbbUECGT2tz7TF+GU
	aJX2Vv2OxC9tKfhoYzflbe2e4GafAW2JAkLRAwfk0gBiaBHfMTKuelqG1j8vF/FV9Ya
	jsVrs72WGLfprECxoDM5WMPe+7Vl+Pan/FL4kGfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a5481fd-e09467be-a5ee-46e1-b5b1-afd8d2ed8283-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e3f1cf5163827557288867916e30c79c853bf292aeebaddd76e07c8e1b8e17b
Date: Fri, 18 Feb 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645145784
