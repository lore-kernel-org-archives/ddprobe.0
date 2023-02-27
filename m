Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E0F7EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 08:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D59C4339C
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 08:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677486365;
	bh=3nSBFKFwd2ZC8ehwf1wRfsnrr1NZ0PPB0r61pK/2j5o=;
	h=To:Subject:From:Date:From;
	b=Rg2k2EWld5ikkDBGnGCDnTdat+vqhdimq2VMxlDQyC9jXt8dnUVUBF+x2FByIeWR8
	 7IVZly1jwysuTlO4JA3dLHhaJrgulcRVq4BfLjP18MwHohVFKWkESA28UX6qTHbEcy
	 G5/nY1Mu9hy4LHw4xHE6FoRMWZu7yIelmAmc/Ewz21lBsyuMJ+4kEQoIPOoft7W8lN
	 iHuk4/9HckgqnTjfiAqZQIDp9UnXxQSS8em5HreD31CVALxqZPR2lNoBfG/RxP/feN
	 aZxzAhb9Y5iicxCBEytdDKDdE2PowidKBnLm1OzFWVHK/cLuFyhNw7jcBk6lL08WXz
	 Ed4HsIbWQZAyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37F5C64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 08:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167748636572.4099.2834722336895926877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30156cbef1973db334074336a37f56ded9e81450787f6f80be314d9922ec993c
Date: Mon, 27 Feb 2023 08:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677486365
