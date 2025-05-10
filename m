Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391071DF25A
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746886794; cv=none; b=F78xs6YZsguGH1tCuAHiiA1k0uXyqTxYVu584dVoovankUIT+UsHfRMGJNFXQ1/EfM0G/FTh1McDrBLo5Kfsmm2wqBOt9tc6YMcZXdxArEK1zGXXC42uVWv4ZZnLzv45OsgqmgAy5iIWJKG0ByM7oknaAqMuEeh3k/s1twcPBJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746886794; c=relaxed/simple;
	bh=SO72EvHo/ydijwIgl6bXScAd6qEy9E3MHb5QuqhkipM=;
	h=To:Subject:From:Message-Id:Date; b=nu4PjqwxUQNJRHCBEvh9rElEKGqLMXrqHCASasa+BVbRG97MfBQynCgM/fJq1Q8FR0e8YaxI6/vl/S6HAat9haOIDQxqwkVXduENDyiGDmjU5Yav+9/tRlnlRWeC/fvJ996fcKE32W898usJ3UeZB5NW+EfAM0P3PqGM4yzaCk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/w00klH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/w00klH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DE1C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746886793;
	bh=SO72EvHo/ydijwIgl6bXScAd6qEy9E3MHb5QuqhkipM=;
	h=To:Subject:From:Date:From;
	b=M/w00klHPHX0s8pUtULxm8Q3uEBp7l7heqIrxcW6TmW6qUtsEOZ8nWBdQnnJ4SGvo
	 RMG9YsigLnpTj6oUKDjeTvUlvBycZdnhpwLILGHILpXLA5jJiZ1+Bw5YXLQ08Dltc0
	 BmUnCbb5GgJXTBc+NIEaVJENal1NaluQDVdRU1lEKl5zRUK39wU4BWXGN3fTm8AqmU
	 KXDsXugAX3RoVmMP2HUqDWi3qMtPM4QXfY+LKA9i62qoiYOoKCxGuQX+wZLJ/bXcv/
	 nD+EllcZnl6aIWqR7SiziypfrFJe37dEqH22scWPC5RkWQgE7g+5aw2gCtz3e/ca/f
	 YjatEHuibDcrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980C3C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688679357.32017.2920799342233220880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2851a7551d667dc8bd489d039c35ac314248de3a120860b51f017a9e7d316f7
Date: Sat, 10 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746886793
