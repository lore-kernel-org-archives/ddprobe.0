Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7C115A7
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94149C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673312487;
	bh=n5Roqzf3OUUFz2emuzZjOh9xOuRga2wf3RrLVsexa9Y=;
	h=To:Subject:From:Date:From;
	b=M+1mdVIKRSsyS/o7Ya2j0JS16YYFv0Gh/B3ZL1PUHkcXIvPIymBdzE7Hg8WG0zCT4
	 FD9zpUZyIq6M6fyb/usXVhagyGwEVZelnurGgG2yPIAGqLuhBvfNnwq05Uz8LC2mXT
	 j1feG8rBulqv3z2M+UiEWGaKfEtK9poc1IDzdHnXMcMfniQraDjQ4Vblqetbh/GIPN
	 VKpj23I1MEcekRR62VDav/QYbMWtWT5+vtmVhN8RHKdLaqR1+qDupMoCvXnBOrpRv9
	 AW+6p8RFpvzqLbuLhNz3oqLsapD04FfHheMz823PM5WcW9fIUPGEssbc+pjMic+QPN
	 p15iTQiAEFGvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7946FC5479D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167331248748.4769.17100645562826396849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f78bfef3406f184a30a2c1d940e9ee8e8445be3c298948d15875ee5de1dd7c
Date: Tue, 10 Jan 2023 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673312487
