Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B95364
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 00:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD367C433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 00:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681260125;
	bh=URdNiHa761cmP9ALS3jpTMhzhBKL+Nzx11INwWRsOD8=;
	h=To:Subject:From:Date:From;
	b=ursj3aShZNb3e6V5WYkKghJEHk3W4r1MeOcqJ90smAqSSPC3fRE6hVcgBICWS3f/f
	 ddhu0b/0c7dNJEhHwJRl9TLXFf8lBZBjWN7HM1Xd3AcLIPOU9p4iGVydAxuTpSMwAL
	 iW9ofN8//rpUAcIRM7M0jSFU7zW7ReII91hF6TzCKAaPDpOngatlu4JuBhYUS2RyTQ
	 Sf/wo3icVD9v3sN4VM1xDi/ubDo4tJLHKpawOxnJOQlDwrW5ltToxegU5Bw9yV9u+3
	 oVFgL6KpfYJHBIivj1yGfLiOjDpw8FGbNxKB5QyGJVMNvRMV/zVA1TBhrYyyxXjDc7
	 5Mo+wyJew9yPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C6BC7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 00:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168126012575.4281.14445346264243527149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042068db69e3efba9b93797eb97bc58e1d5c1b955fa18bb7596697029873e452
Date: Wed, 12 Apr 2023 00:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681260125
