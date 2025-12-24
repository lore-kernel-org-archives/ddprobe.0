Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FFB2D5C91
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766620434; cv=none; b=qMuQbICFipDKd8Ke7PRo9YUhw60WNoYcJXzo9weS2AJYOF7JMmj3lIlBZa1w4ykx4/Ao2s0BHAceKW9CZwGrvQogxR33YfV57/qDxdpIdJjhebd7i8YgwnRBNO7ngWo5IPTJOi15NDbFhVO884PKuH4SIMvXjYTlS50VYI16sTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766620434; c=relaxed/simple;
	bh=OpaYuDEjG9buKiO6y/zEB+yBgPVYMGOZMucrJ/aR9uI=;
	h=To:Subject:From:Message-Id:Date; b=J7q9bdYAUxGp4WxJA9JuJ01DYNIcnvfyzbMbVh+0fjpHzsUCsAtPTcqYGiDKuVtZNpt0ufxZGW8nQoHUrQ49u/lk3oBDSA+1mRZPKC4QBy2OerfJlTVh84hmJr9/4dF+HNIFn/QA1Y8o3c3YXmocM6Hx6Okv/fFJ4ov2foz88yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgMwSOBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgMwSOBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF07C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766620433;
	bh=OpaYuDEjG9buKiO6y/zEB+yBgPVYMGOZMucrJ/aR9uI=;
	h=To:Subject:From:Date:From;
	b=MgMwSOBypypFZUXJgWO3U3Stsw8Hh5rnzHOKwPPHJGI9vX8YQdxeV0A8duRVdZgxY
	 O0ZY0vJgNs6xY4DLncLmGPfj2oSDjkAMjrKDmBxPqy9xxziAicPd668y66DUmJvgYa
	 7yMsutQesLDWR+ZMw4+2KmfGKGB2OLllJOlBdu3mZvxHiTGes7RaxpBtq8hSruZZ3B
	 /OYGJ9IfmhaeTJVRFCOgL9ABiDCdXh4b7j5IXxFzsjg098DxN1dweJstfRO94xTvMv
	 7/sBpIOOyzpSAVusq2Ub9o2mJfivIzHXDvdq69M2qoxHP97IFWe618AMjlFYqwV7QP
	 cYb6ZbDKdn8EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE97E776FC
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662043358.10686.5749156396005775339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03a4ac29a55193c9895b057d45255cfa8985562868950326d9e45a25ff6f207
Date: Wed, 24 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766620433
