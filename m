Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C091B85
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645731684;
	h=To:Subject:From:Message-Id:Date;
	bh=Hwirl9AZjeSI8ujdg15yO2li4+KN0rCf+D/rPWGaUN0=;
	b=QKFCaJwTTF3mUa6WADW7MfQarNowXIWou5NN2Mc7qCWSwaq1cZLZ3xg/rtaoZceq
	guxxvzIFqoey5zBiILQTeeeX9N7otSDQr6EEUVZ795zrFFiBWKXNLfgrb75+QQKCEnu
	kXWU9mRtONibIK2RzdTSVuGVDPyAwHjsGsba+BCE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645731684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hwirl9AZjeSI8ujdg15yO2li4+KN0rCf+D/rPWGaUN0=;
	b=Vf0xx1duF6Xm8Xr8zC3BGctuhIdaNuK9MwOojcUDasN1EjVibk8o2blmh1XIPO4t
	1WDwlaeRU0YeSNbpgvzZm8T0v6JPLDaIRBlOnt93BW2otQhAl2xRUclkTfp6eXdT9xF
	AqxF1qqeVdpp7s1vWJRUxwte4R7OlFg/ViW/XcAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d40a189-4ce59ad2-9727-4a7d-b78f-0eafeef59ecb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e4f0447d1625188203159bbcdcc80e3aed52cda347847b5f1e4d0cb6cd2c2fa
Date: Thu, 24 Feb 2022 19:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645731684
