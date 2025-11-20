Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF752C325A
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763632914; cv=none; b=JtDIdIw0En1sV8kco5IJNELArZMdp3UkDIZVzYLcgFj3h1hgJVXabR4Q6kb+bjloNyR+sxJxX55BEzLEVNSd6fV8yQteSrr6Z+QmbvocJ2+XHJo8kt98NycBdPUUgFeltSwZuNDCb+4/96nZwc8ysAxcS1YTWxF/T/VVUItB9kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763632914; c=relaxed/simple;
	bh=Fd2eJzX/B712NnULntdcU1qUWbF3tXBdfriEaTIo8QU=;
	h=To:Subject:From:Message-Id:Date; b=E1gu6Q3+DfPGV8x2ZTyq55ybKQsGyZJySjwlXU3Wd05eDbrZl66MZO0+S5mWz1zSzfVZXRNbraJyT4U7zYu0yA/DXXesTJGz2j58LsSeHwJOdnI5b8TpKmvqRV+m++WY+i522YBxDrZYhkgWhoAkSO6gmKlOQNguGKHgj+Qc3Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTnWRm8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTnWRm8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3281C116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763632913;
	bh=Fd2eJzX/B712NnULntdcU1qUWbF3tXBdfriEaTIo8QU=;
	h=To:Subject:From:Date:From;
	b=oTnWRm8CajcA7A54bA9PjJYWBClVd4KmxU0fM5Cc8DpGwqI8p4mbFOdMsIvYV3A+c
	 YeWNQtEbjcGH6WKKQF353Wak3PXKB1bP/ZuObLJXcurDz4B/1kp9ZSa1hn/mPF/B75
	 Zn+6B/8rC29F7yzOHM7rBO09BfhOrpkLIX2puyeesuEAJXVUw2go1FLysLQDiZoSg5
	 mFzxegqEOMXJTbLdH5HlHTYnxcWfJdAWVNxRkkf/mNfeczkPKnuU2Ld+8ANrViNReF
	 sKeF50JDSuSu/SKGueb+1q1m3ojnCibjxd3SBpAwu9SFrsOezLm2soEScQjzmJM1K/
	 DBUnaJFsH42NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9116FCF64AB
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363291358.14528.6104672173875564760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295d7a7b18928b010244658a4502290e4edee677cf023d65e9d5081c0baaf530
Date: Thu, 20 Nov 2025 10:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763632913
