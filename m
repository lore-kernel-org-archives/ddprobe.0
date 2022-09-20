Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8384A20
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69FBBC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663632653;
	bh=KtgOJuzgt2xMJaIkbyoNYwxy5uOQLkgqFrV/eAWz7l8=;
	h=To:Subject:From:Date:From;
	b=oU0gQa+53UAMmFZ322doJDvgFqc/Rl5WSlqSRcF0WjXW4SRydG3lUu3KEm/M9nTbT
	 m5SbHPE4BGYxjdM3ROm8iJS7iQObfKpZBs27oIBaXiHqxeF1SAmovYQIeoQVkpx622
	 wvn7d1kAkWZkQ3MyLtQ/504WGDLMQM8PcsUdDnuWjXcO3FJ+zakCR5n/uhnKgki3Be
	 JM8/m/xPP+qVmD84bUhmVa5M+NMdgwRy/YuvOKh3IF9nkimvtG/1rmF3L1owWjozgD
	 nBIiahbnKpHQu5wmC2URafFQjdYMqlP01pjC6JinxlUDAComqVeNGLaKMJeuPq53G4
	 4t1I9MLIlGZkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B94C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166363265332.11093.3644342131758581877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d514205ba23d96323ee5e46ca68bf9b849aadee4e2ad9f351f9ef03099e532
Date: Tue, 20 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663632653
