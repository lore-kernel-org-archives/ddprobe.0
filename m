Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B9F290B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98B9CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673910087;
	bh=gaTLx4owhfiKmXb7ozJvPexsntDmzIVGLsKrLFxdbd0=;
	h=To:Subject:From:Date:From;
	b=Y2iyOwDfzK5lrv1bIG1DjxjmHwLwKE2+sgNzhVDyKByx4E8zR+C8uDc15THbRJsiz
	 IUdIbpiSO/6YSmz8J+pekuulYvyumkQ/EXjDFZcOcEL3xMuc4Q03g/5t3UzWKQO/ma
	 EfavSeoH7dIVloz/hm/tByR1G0s54DWVb88bOvukmS3zXQk/fDok9YpmTxgxQpEDuE
	 2ZHoskH3yWLqENdVpXpl+qhNH/tIS/KUgoOLbo9rQ6fwqZky04it3XbhCI1cPVD53P
	 cSeC9NqqeWa1Z9i86YQXjtp69+vxqwM8AICc+4LGYVEa4P4U9JGCWOidIlvh4hI73U
	 716xpNDLPNiuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 756C5C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167391008747.26602.15014032623489422861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c4abc54ec02c7631915984b5c9646a9c6e86970ddac039b9ef9f319ed0cbd8
Date: Mon, 16 Jan 2023 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673910087
