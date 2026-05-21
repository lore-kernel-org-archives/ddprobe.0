Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1ADA2FD1C2
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779327636; cv=none; b=HW4b++PKnEEhFdji+imQ7dtzNGmFVyIp6YCVDOtKVKQ/F2KWdndd/aPyhVcCgm2s1VztveEefFt1NCZZX878weOLc4U3vC4hpbmu7cvcDjgEpBn2+ZQGH/TzEhHNqr4Sx28QQVwJB5DT0IKn2phw/9ixvEW+N5rz+qRNIi7eM1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779327636; c=relaxed/simple;
	bh=l13ZuPYiZ/UVoen7Qwcy51jTVYDKz4hEDj73XmFZR30=;
	h=To:Subject:From:Message-Id:Date; b=hCtzb/lnCvlgrM9WdT5wxFwmdLfyplsw03RGizOHCjV5oirB/X04rnYmgTnYTRz2bVw4XExYvnHPWUndGa0TTpgjIBw58TTlN4OI4KmZYQBWQzNEcW1v+dwu1vjBntnw19yK+eiLvmdrD0zadxfoE6AJUM26PrGWDkNfN4NFPnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuBiVKoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuBiVKoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E33C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779327633;
	bh=l13ZuPYiZ/UVoen7Qwcy51jTVYDKz4hEDj73XmFZR30=;
	h=To:Subject:From:Date:From;
	b=KuBiVKozLugISUze/2l5yqPkCotWJqMFc6d2NxdcJkz4r/ER317Vx2gYHhV/UZykB
	 2UsCzBuiUZO0p+eDWRK0NGObxoU8tdTLmOYxEJv5GTqGgRbVJbneE/lNoyLQDbqbM2
	 eRwE7cZwyu2PqytUe2BOlciGtnKvCAcwnfHr18RpW3Ucl2tGRwO/alVzTGX1bdK6dm
	 7m4x+SV79Z3pLJQ+vAmVmJxEun7wItvbS5IBPx6INo99ezgJHdZXr5eMFLaEmJ0g+t
	 E1W6xnkrKeFv+RlKeWwvfzxXr35BsWINqCPoDzH0xkkj95gBfphRxM5S0/bz0eaRPE
	 xW+TeBGHXBvSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFACCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932763369.8515.17232781494077014650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbfa418365974853b9969085e7278f832fcb878d5f62b60ab0d9e236dad01fe
Date: Thu, 21 May 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779327633
