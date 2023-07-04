Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6212A1110
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 22:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB716C433CA
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 22:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688508368;
	bh=+UmlyHp4S7HWfN1eoFS9guc3NVoWU2MERhPWBtcqXKE=;
	h=To:Subject:From:Date:From;
	b=pH7D512OMRpq5N/6rF8/2znJbYuHdDNfv9DybegTW1xlGsfaiU9ZEyRx7LwvLxZhs
	 YpJW97bARfom+aH0ZKx3aRyRkpGQL1N27mrUKmIht2F8LprbcgWn9HP+NQHYPMgGUv
	 Y0WtSq57bp4CtBu+yG43CIOFZ31yCRIP3NDTmh8pOkg/o9qeplKUfVPsDdEunRrzKo
	 wyxLno3NEgOslC54lI8yGGqHD29MNjcEbtutMitp7+HaR3kRlxUchmhIbIgL9QeZoT
	 YBwUw7JYAxvYQx2AUgCDz+cafWA79Kfc4zOujG2XEOxNJX0egyvthZSAw7kxeOELcJ
	 gCcyDQ+ow3mAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF9FEB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 22:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168850836871.2035.11942028116138730888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1044fc3782919207e39bf91cdfe6a53cae428c45105c920908ecdca58ff8d1
Date: Tue, 04 Jul 2023 22:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688508368
