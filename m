Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0207F12E6F
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkVgEewe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D7CFC433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701038896;
	bh=zP2Nab0HYGoo4Y4CCJpheT/ZVftfNUgweLQfnlcX3vE=;
	h=To:Subject:From:Date:From;
	b=hkVgEewe0/2WtuelMY2RiC7RcCIJCiEcKyeMobwVmHNeYS9XgBDRxyZ6d6lynWiv0
	 yiJMmt9CsWaVupKC5ZLOwelQStaJ8Mo8Ki4tiF/Mo/8g8nnDPiKlMh4S/TfrjTuKmo
	 mq2MzkY/YUowLN4xhhH6dhslACD+8cY2843f4Mc04qmgjMu/m/0pmablXOAx4qUn4Z
	 arxHEUjiwQ7XmO4DJdkMfoI2Dy6WNDxyAP/lCUZzsekdAKh0bdfqRvLDJIWLMGgTrW
	 1QOTZwHyU1IpOFd3Lp15kxMAIct5EMNNy+Q7YWuOsYTGMA9/E+7s2daNM4lfl2Hv2T
	 bUzgQzgs9WxNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CDBC4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170103889640.14542.13066708286308708080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e1e9f197e4773d913182450307a6979c2d2447f7e8b63c5f6863ad9a429189
Date: Sun, 26 Nov 2023 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701038896
