Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDE12573
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FDA4C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671638487;
	bh=hm36t3aTskAnwla2HNiqlIRL8yNXWJEVDfXRI5lfubk=;
	h=To:Subject:From:Date:From;
	b=LKzQhhQRiEJQXfpYZqwIIFi4fMjGj/sP6H+NZSY5tqosIbFUr+SuUv7dvdia4FtBM
	 9CxXC/BrpaEylF9QHVZzcok/D6cJFAoBu74IShceyKJGyeM2Yaow12w+txrIGxeUdE
	 /U8vJwApW9jZ11hHaR6Ornxvsj/sQunZv/aZgENG9uCN6qFx7KTou3IDrupfxcXWcp
	 D/NXZWMNL1FQsRMj6VA9MOzFN5riJiGAJnsgTHL8aEPBoqvc8xvrGJNfdU4NUcqDE+
	 X0Xb6/UPI/TJd1OxQqLwCj7vioNnlYNVbirfjC3jwg+DVQ2EjonnEuwPNCXWYyROAn
	 i9NRQhNwyh2hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6277BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167163848739.2825.8866649519202092605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9faddf9e67509d43f13e6a94c1e0d7f1a028844ec143ec825f2e73ed972043a
Date: Wed, 21 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671638487
