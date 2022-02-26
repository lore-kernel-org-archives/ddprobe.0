Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC97623B6
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645879284;
	h=To:Subject:From:Message-Id:Date;
	bh=keIYXb2pwuTd+toertN1sDens8ls+swn9mFMkgkGdq4=;
	b=kMn/dIQD0dh8cCktGF1j/HjzWyvPKIwS03Y6K3z0Pig+I5fRU/55cCEaT6JLJnda
	rMOv49ihmFlE7m9tBgMf9B+eUiUTLtuyb3RluPHObL3hKaZNq6xnupkcRcAim2g2Wng
	b7x3KvcAnciDaOXSIN6VMtH7nPyZ2/Xw4ssoaENY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645879284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=keIYXb2pwuTd+toertN1sDens8ls+swn9mFMkgkGdq4=;
	b=LI0UyEBc2q6ihE3paAE7IFFFGOZLYeLFmqg9WkfOb26KCVRb96dC40lhhTNaWcp2
	7F+m7SHUKs4BJmEGUO8McpgGL+T9vYUdSJUfvKmtSsw/EDRO3y+Nu99W2SljA9/eZBQ
	60yquNlzV2f5GWleU+HiGBmH5ZZf4c7xuINeouBg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f360cd454-7b5b8ade-e0d4-454a-b2e5-cf360d7f04d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab8a390aeb916b9ecc0290c436afc3a287c2d5d67926b33eea9e484a3a5511fa
Date: Sat, 26 Feb 2022 12:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645879284
