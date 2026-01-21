Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E156944A70D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768980234; cv=none; b=tnzorCW/+/nTQ9gcqLLJ6wIykBPw5g5fyDAVru97qmPvIB9nXu1aVX60dE9xWjrRnRucuaSG/1/nD3y2A2RlS2ABJt44exj0MBpSzrtpBVvMJVciI0SKq75fxUiD6omtzzxFMoQLapI4lAvLCepP6tv855ckhHKDaAw/e6kfEpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768980234; c=relaxed/simple;
	bh=Fdn5n3xtdw+wfiJWs8MH5GOnM/f3+D5d0+IU9zyY8YE=;
	h=To:Subject:From:Message-Id:Date; b=EG5Fywz0wsVvNScvgnFLRojYU8/mQs33zYDfPKdAUPsvKy2Z1ppsn3ckFkhJLXX9d9iYJNqVjg70mbNBYSFxhh4v1R0m7up5R9YHQEUU4EtBpz3LJvTkPP0aM0d8H5ZhgYW/rqAvlHrK32NzhL7Ew3JcWyoiz2Rmg4TvFQMV3YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rd2a0LBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rd2a0LBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D8EC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768980233;
	bh=Fdn5n3xtdw+wfiJWs8MH5GOnM/f3+D5d0+IU9zyY8YE=;
	h=To:Subject:From:Date:From;
	b=Rd2a0LBvIjvZSxjT/ZOOB6abl7NV5sM4mMxUUSvXp5WBSQnyI1VcIX6cnhapyg/JP
	 4HJ4MzcWh3gNHnvDwox5PyQaaCkHiuybi/D9wzJqX1cqCrIwQBbKwPf2Rf0YtGXi3E
	 D2yPGPMrq6ZnKOZHDWkGu3dhjmqkR9souV3rfrsRYx47ejbMiYEWCH4K7uU7GkDYWD
	 YYnKteO43x14nKjGfIM4Psi407ozUqaVX6AgkBxi45rble72kZCiBeUoeL7PMissql
	 DmeqQFSXoIRydM33z9J4w4uGT8JjBXskcslWAZGegb1Z+iiaVQHagC5my7BjLU2iK2
	 u0SXorXoMNf2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F656D262B0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898023361.10101.336200552152003444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8788e7c2df5707eff7e4791fe110b475dffc7c20a710a8a3600aab103f60270
Date: Wed, 21 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768980233
