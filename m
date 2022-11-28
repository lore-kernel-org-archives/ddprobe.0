Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF363A498
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A3EC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669670454;
	bh=YrjfilMR35i9+fUsktVZY7t3q80+6LlTa74PEnvCOJI=;
	h=To:Subject:From:Date:From;
	b=FdR0do3mFBFF+UqbP/B77c6dkZEuaxTyOoeg/iGrA45fo8oqzDd3+s6ayJ1LJzLAe
	 jpYlUN8hSj987477PMvi5cR69tq9Y9Z9dDsWkJucvInaqAHaNhNJzcbQ4NyUOi2Zxg
	 OdDDqRlykt27RXwphdAsPEwMw/hnRIcro+/R5Mdz4j0Fwh2mQN4SFkogx/WBV1c/xN
	 R4Sp39DeUHZQoa81fTX6eAGOCRGE3jynbAQL7Jt/yaguUX0Hsw5eIXzkBosFpjCzeo
	 C+9kYLBkcSUg8noK/9PawA1NuifKWQAPrcqpC/QRdbtCGccAYuCO6fplewnz4/Xdgy
	 KfjpOZwHfCgDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5867BC4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166967045435.7523.8261856784814625228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6684adbe7cfebef41b95d838532e5ffe088a114f1c14b9a5fc0248946e1e72f5
Date: Mon, 28 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669670454
