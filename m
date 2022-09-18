Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFB17C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74ADCC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663467653;
	bh=h1ksb/kzvMNg2dTOm3WlhFfnol5pZeprRTKvhqVkfPI=;
	h=To:Subject:From:Date:From;
	b=MjE0qZFj3L+GjDvoBHSDswrygVovQH1JYXApA7TA69AvJboZxkkYnYi14fOB+N5Dz
	 W6wa8DpiVYrvbCHQyx1Vl1OYTlVXo5A9FwYO5Z4dMSUpFU6jjCZGhTk9y4lWS/fomp
	 91SD7fsWQWHEvBHt3QywGrsJVn4jJi447z3QWndOLdX92qLVFUod4q2TiVmI2aFmR5
	 z0CZtdYKtuxpVA+8NSrS3EZhLr4d9MJ3pbaP2PUC1rg3sSuIi+Ng8DF+TikpONZ2h+
	 8G+240PecFDmtytEctGlPrH6XOO8gbNNTA8iOfgBhZjhM9l7kS5k9EvDI3lwLCqQ+A
	 Zy+UmtV8Y6JXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B0BEECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166346765332.2528.9711533589231649769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0ef985bba8170cefb3b8177c4f3f3113c5b9abbd5f6c85d58f88c6ecff0cb3
Date: Sun, 18 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663467653
