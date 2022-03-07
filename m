Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D2D4350
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646689885;
	h=To:Subject:From:Message-Id:Date;
	bh=yGmFDt2G/vO6gY6MFiV3oWPa+lmRDWzd4OrIo+QjT7s=;
	b=FLcEGBmtSRQ+peFGKPOThE6aok9Yqhi/xh3BLRKM2GFVXDenQRUAMurXmkDYo1Yr
	NnEKDTTLM0D5ZTRGBdfLb56BGTzfEjg8exoJB7+62YdLG+0PizUhsrGNvfgkBttQ2a3
	SvRf2wE1bER2koC03jcGFC+cIwOhCmy5jCOUa6YM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646689885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yGmFDt2G/vO6gY6MFiV3oWPa+lmRDWzd4OrIo+QjT7s=;
	b=YyOX02sosZ1mW/7gI/kICoDkAIsGZ3+FgjkD60M9w1xUoW72GyaZDZ0deCb5R+rv
	yyBx/zcYnLYzLHlWntIFNNrG4ijc2LUHgjeLVBLqS1Z50L93Li3jkmplerRDZoQr5YX
	mMegAkiloodIrf3FCpPN0esMOVobL2I4IdJLU9G4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f665d9abf-5bfe0b98-4003-4d49-8a5c-241800ff68b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b33caf05f95227c60343537f7e8ddb43de0c9dcd1ddfa7b37b1da850aa4af7a
Date: Mon, 7 Mar 2022 21:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646689884
