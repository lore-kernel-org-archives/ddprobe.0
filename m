Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22904257E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 15:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644679811;
	h=To:Subject:From:Message-Id:Date;
	bh=hBtUxpnoGRRe7ty6maRZQfHkfeguDZE1O/N5WR+2iY4=;
	b=mRqhHyVLvSeTer0wPUgu803Gmr2fS9g0CCTjO9PlVwKyQWQnnu6u5E0o7Q/gIb2M
	atlAdsEX6GLqnSNJBZ8M56YCmmjn3RZxdUriWhC6Di+p99onxBA70cr/3pjqGaZYNqT
	z1B8Rjn1VJ7kmV8SWUNiEYhHeVfhqIrrRc+k3Ju8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644679811;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hBtUxpnoGRRe7ty6maRZQfHkfeguDZE1O/N5WR+2iY4=;
	b=OGPIIo83BKpepEWl88ieY/UuHV6PyUyS10OOR4ZgI6MHIRRE2+lTwIcUQJ5UVLHI
	eX5AoTG+D36iDfCDhTcdkVsHb0MbSPeGeBGiyZtQFxcB986TdcCDhGNXj1UWDRxBG/P
	QmaE51RCbLMWMbVwqUA2FBe0PlQ58WroKRcBoVzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eee8e514a-e3ca1c9d-989c-419d-ab1d-dc3ae26c9227-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df2a57cc531b4ba945f52c067b178454be41413b3e6f22363aed192f5fee6d7b
Date: Sat, 12 Feb 2022 15:30:11 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644679811
