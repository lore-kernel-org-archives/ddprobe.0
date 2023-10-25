Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F7415491
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGkUdNNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F9FAC433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698230896;
	bh=04/UmENoEsQIKHGdxSuWqkt4ij0aLZSn8Pu0wBca7tk=;
	h=To:Subject:From:Date:From;
	b=sGkUdNNumv30/d/7lEFiezYvynji0Xl+ZiZbWA6SYYwvJlXIFg+Dn9jdXa96Qx9gy
	 6EsLNYAEeKf5zXSYUDPfROsxY+J8kRgliwi3lFJ7AyYmPhrlpR4KgtXNwA6gX2A8PP
	 kzOWDKxiJ3tRx2QventVlL6G50W9mfLvTI3Qrhh/NG1e2dcgLoG7fdZkccwemElT4p
	 PHmVMYQpbeZRRQFK86Xd20myJJr0axzlOMOYxOAUSJZoB2Rarty2uPMO6iUOllgeVi
	 XCv2ER5sf/0dqck9LcFbkoeVn95y4+V6LQOicaAEUB+OhqRAi6iKxnngzMLoTlmQEv
	 4TLevXjbTO+tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6505DC25B47
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169823089639.26659.17631213021845574878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dda8a411bacec0f6eaaabf7d8adb10a72c6e9a4dfee3d8347bebb970cd0a64c
Date: Wed, 25 Oct 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698230896
