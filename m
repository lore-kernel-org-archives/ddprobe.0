Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC7D7F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 725B6C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666044653;
	bh=aO1+tFWPVayzksQQ/euQ8XrB0YqQBYbWvNtZVrYDHhc=;
	h=To:Subject:From:Date:From;
	b=BZ97HuPbbWdBizPNABPk33LDRYQxQQ/7BzUIkbya5sR/vXfNiAj7A8wSYl8VQeScb
	 p49nNE/311n4IVlaXsh0Tol1qjpT4lP6//01mZx2a+QCPlQ4QgColQmMeTGpS68Xgj
	 1oiL2LA9VnoZ//7mTLqSVS/ti09K0TJl8DYnTNnjvRyiG6VAZO3J6HZxjo18IsRi13
	 xQBDj7QTmh0JAkYKjmS4AD3oqc7/lJUUUMaQNLABiM+twm8QuwusGFs006X/nVGA4g
	 D408nPAjGkjaLsZgfEtcs8YckDwOpuKGf0w2oNys3BVHIhIWD1zHsGEuPMTpwudwHc
	 ocz4k5fhlHSCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54392C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166604465333.19036.12512846198596613229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e388022cde0f60bf23bfcd2ad77dcdd903135831ddffa09bcbd71bc3314f4f09
Date: Mon, 17 Oct 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666044653
