Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262081442FD
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721316954; cv=none; b=J2j9m5l71b0aAhkjQM024exxF0xyVVUpg7zBo1OKb2yCUFG93xHtCb4hUFZcgiZzuzGUYOJVywZ4raoa2g/Ay9HLZlJFUexYUwePxyXAHm6enyoQ2eRn9McX55vYH0XRsuhi8qiNMLYK2KdFsUgfpFkC31ZNGl8rtjqmCIuu00A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721316954; c=relaxed/simple;
	bh=BM4wv5aApQ3KVatL/KnyIlXEV2sJ3XQMQLbi5OwbCjg=;
	h=To:Subject:From:Message-Id:Date; b=E0wd4YZsG09eN8SejRsB728jaWiYRysvdqCHo1WDU0tUQe3KQpC6c6VICW5PhzZIq8GC8aLajEuwu/vMwp/rWjpPF+k2pMN1qjql72/l5lc5oSprKF7KoV4RFgyiSAX9iX3rcx5d1J6GiN/tdX+Kqrj6vSeA/q6YJWlDvAN5oZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJb+DDZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJb+DDZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42EAC4AF0A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721316953;
	bh=BM4wv5aApQ3KVatL/KnyIlXEV2sJ3XQMQLbi5OwbCjg=;
	h=To:Subject:From:Date:From;
	b=bJb+DDZfc0z/ijueKL0NagVPPORUKBs+B47RzbX7l2EWmhvgI5dxL6E5mN0SkoIrl
	 vvwHQH2+/gnNgK8z/mI8GsAMyMRapB+lZJ7PDlaXcqot2kPq15BaPpzQHmp0V2GO3b
	 pk9r4wikx2YkO8nWYz9jDLcmAOBVVqwz0XEfyoMwJQMKdnqQ+to5hp5MZmzBu+T0P2
	 cSF/2GsZ0i2DI4Bpd9J6sAP8ao/caKtswzrbdJjqvIm4+wgYwcgnhPUQZz8ydvoSYB
	 Cj8LXT7lGB7YubXTaAgxucJosK9Cd/VY0EXu+0Fv45wFJEb/MFQmJvkBiHNJrpC1oQ
	 n4dRJNCwcXHcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E815C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172131695363.7782.18241332102892992957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965742ef427c2d842f032b0cff39fb6851c05336648a356d06b707adc4e89631
Date: Thu, 18 Jul 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721316953
