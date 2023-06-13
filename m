Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A8F522B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 13:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C91C433F0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686664628;
	bh=oLIjeMXcVvqOoTkKgfFjJNlm6wUFhjP/H0CMEQkNB24=;
	h=To:Subject:From:Date:From;
	b=IZWoBX0Yvo+sJD7CAUax7W/Rb0IsGD7GzDTUoW98Aox54zTI9lSc8yweGZb2aLl8/
	 zV3i+s9xSi+9MsWh2UWUw7ZnfR8JQz3pSqztJDliXo9kIKZo1+jH/RyUMyD3NxLKgI
	 B4oxQxVqcGHgdGaYA4WWRsT30Gmr7i3A3xBQjTdiJG+ZUfRVWWG3StpUZrdiMSkbc5
	 MGfjYddRQ8HrY1uJWILZH7hp4O2z+RpQ2MGfFit1AS8GxrBcKsJw0vulFuQMGfjtv6
	 US6O0Ea+qx32Wzz1SQ0mmYfSyu2Gxmd1PbIooj7Jvkqe72mQwnIdeo/d7jEq7HxEgJ
	 5Iu5A3oOaTKeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE07EB64D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 13:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168666462869.6836.3081119954669082633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36dbfa6ab7e755fb692e2147e9dbd4211fb84422ce2ab3682ea930c9657616e4
Date: Tue, 13 Jun 2023 13:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686664628
