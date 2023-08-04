Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C235A49
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 04:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8700C433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 04:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691124188;
	bh=Rf/6jCzrximieFU70jKGDdUVIX+tZZ0vsDnCCBoxHG4=;
	h=To:Subject:From:Date:From;
	b=QcNBBs9g5nZmMQI8GEGyHOyKZjROtEw6mVRCIjclZOj0kSgE73d5b2OKpxIy7rSQl
	 qJyGAhIxRWz0OSz60YszLBM9TrYKZ2YPFdZy5UFO4OSDNdqPWUl3Pd6G07YSWT1ug4
	 B9xodTHoanOM8k/EkRC6XViaLcb+jSwZKSU7Xf3FMFZA82VC04KtfpwkoF9fMz1Qb/
	 HkHL9loMXLHLenkSylieLuo58kvPxuIJOlTU+oQwc/a780ySytYMbBCCyDp17RZnGB
	 ktStRx7zlOgKQbkJAuTDyes+rMOy+HOT2rsj93IOld4E3SkUgqFzxs78WPl8ZmejDB
	 M6aEPIn9atlEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB6DC001DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 04:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169112418876.18005.10980852197791566148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb90d799417513a3dfa8da125c60f642e862eb38fc3bca1d84e2781f8e5b010
Date: Fri, 04 Aug 2023 04:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691124188
