Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629D93C25
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 20:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA25DC433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 20:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691354588;
	bh=BEKQLI9PCJlTs7yLMUGnVE/2G2XU0QjFEU2u2MiyoaM=;
	h=To:Subject:From:Date:From;
	b=g99EG3+fj5iI2ZAz/iJKIt+xJpbbo9AlWr1Zy5sR8gqQP1yHaiANG/NGeV0Cpkjon
	 FEZH/PzCGYASDGP0j9ypRBmGYFpcFGZXmCNbS9MvMutCMa3UEhz33wc/shGshBYyOz
	 T/RubZmB9K0lI2pT8qlYN3u3JvSWCCBfOYMP/g9VsYkZ0/7GKzS1YCWM3pj7h5idkD
	 IJkF5s9veQYcZqzwHj4d5l1dWxxIOrTZL4/cnOdZHS1oCGh+/9LdWlL3OE6klHaNkz
	 M/Xt/UO6TvfBQUG45k+gW59dQ5CosPoVDGoILLhFlBeRMmfOuwmpZ3Aiw8JRxT+Joc
	 paK8bQ5D3bYig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD41DC001B0
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 20:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169135458866.20766.7165935634399795645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e881e525781c803f11b37c3db5e03f9c705352e45965a2fe12c6ec8938bb4f89
Date: Sun, 06 Aug 2023 20:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691354588
