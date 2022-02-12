Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5B57A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 19:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644694248;
	h=To:Subject:From:Message-Id:Date;
	bh=2wkcFNyg54cAwe24Gpy7Vrso6IEsaQCzl6TiBnTKjQU=;
	b=FFQrhzUBzVsFlLj688qqO/w8OE+kAd9LxAPN7XL8Pj1RefjXQDv0YMiWi1em5DVk
	hznO3dqQICuxv+kyl89b01TK6CGxqiVKX6I8eZT1vzazhzd0cmnkYuCabllhWniV+Cx
	gUpOF6Ah3dMtoBSHUpFcOnJ7M/cUv1z0N/Zm022M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644694248;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2wkcFNyg54cAwe24Gpy7Vrso6IEsaQCzl6TiBnTKjQU=;
	b=dlQhWhnQdQXne9DAlzK7d/1YI0qzGWiH4dr8jie/qAJ5P7SL+ivgq545a+PQkRpG
	biDNbXrkHwihnE7/Zo6anAhXg4qROZvtjWG3DWM59nOU2Hy+91kgK5ZWBg+CMZxlO0U
	j1zu7aLH83CaiBKBdavI6dypy1uWsK+Fk13PkKrE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eef6a9cfc-faec6903-d1ac-4730-818d-e0a67cb37bbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 901aba9383dadf37734d951171d87e24d463fbdf0d7aa967ed7b3470b844cd2d
Date: Sat, 12 Feb 2022 19:30:48 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644694248
