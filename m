Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA2A79C9
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F69C433F1
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673537487;
	bh=d79ulDKtYKAQwBPgT/EeXdKfZBEQ/B/q3VMJ7mopQZ8=;
	h=To:Subject:From:Date:From;
	b=ctD8C8OJtiGaPX3Sx7CEuTS53I/V7yb5x2knGau4tZlC5tokvEZkKm/gBMjVLcr6Q
	 Tn/uD53BmnBjavliHPl+iX1NI+J2U13UBM1K4Ng0RcR2tUbjoYQTIiLtSn5wsNgRhM
	 v33UdNfmiOxEKt6x7OrSROfQFTSYCkvFKW/5ZI3r6k93j7lsa+uYTWVKmr1r3HoyK9
	 Yi5EWTuD17CbiqTE+0leyFA5msLCzXnb7YU05ioxRDrmWk+k4GDSMYTHYT0Mnb6uIA
	 TWceOsYvwTYc9MhWMRo/HFTF/Mt7YpLGLaJC+RMW0DG+m4MtH3ZfYUVRzH/mHi4JKZ
	 zUFTeXzYoEwhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FC67C54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167353748745.5465.6372837483782967860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5534205debbc14a2d41b73679342602437d9959d580c59afcecae91c60e23bd7
Date: Thu, 12 Jan 2023 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673537487
