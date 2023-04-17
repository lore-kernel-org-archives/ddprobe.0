Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373F82F4E
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 09:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D90C433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 09:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681724885;
	bh=KB1UEfCJ8Bcs3szEmEGFwFm7/qGLXSCARQ1h1DYtPyU=;
	h=To:Subject:From:Date:From;
	b=CCWFVK8jbogfZDhA4fv3WByZafEJJh+1UA+IrcRcdrhcHvL5sEQUoFGPJG0FmI4/p
	 Z8XkunXOWmep5GM+3WS98pXbDpHM3wL7lXSvJdUnsJ+YxNRig2h6AEsmhJY6eWhw56
	 vWGjnlRQbBzd1h5OQMEZp36ot9RkvEYDNoE7mhnTypIWGlBcPGJlA2x4B8hpfBf3r2
	 TuJyYp8lwRr7vKFKll9ztxfQMXGR/iXtumrVm2hfG+QjbminfFgY9bVAThD01DV9qA
	 pT2pnNh3t8Z4FkLdy3R1aCte1e5g7quDmb2cbsL3Y2msWKr4X8l1iYZn6UMHiy/+k1
	 I9PFjUBQqNP/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCD6C77B77
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 09:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168172488576.3179.6106404106726148575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba1f979206b52646c8b236e6d1f63ae8c1be812e26cc758111c8ddcdb171248
Date: Mon, 17 Apr 2023 09:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681724885
