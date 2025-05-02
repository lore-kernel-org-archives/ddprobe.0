Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A691E5B93
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746223195; cv=none; b=tQymTq+YaaRK4Gg21HBl2jobN4HPlNEMu//zhMH/Rnj2gqd7yDBPvMth6RtfgxDVIh4Mz9fl6uKL0bykjgQOradfy1G40BLWIwhE5UGm831fi8AAl0N8MxXfvbEFYXl5QCRmSW+Zcle0u8bvQk+9XBgzbdyD04WZp/z/pIQDHEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746223195; c=relaxed/simple;
	bh=OmeLXLbYnRE/W1B4bvrOR9CPNXtk8p4Qt9fEMoOl5tM=;
	h=To:Subject:From:Message-Id:Date; b=hrjid8a7wCecQNR5vYzvGTUVPYr1N5kU8TewnJ2Bv7LyTMezXVNTnp/XFEAJZQ7YuGCPUB4Vb+eKeFCVopKZkmdZxnIi5nZBNJZjJmqq+01Bk7g6RsOn37uu5GlFUaEyoV756L34k2jbbwsNx27aZw8u4gBFAX6V0AcIgBjinhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1G/BnA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1G/BnA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B17C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746223194;
	bh=OmeLXLbYnRE/W1B4bvrOR9CPNXtk8p4Qt9fEMoOl5tM=;
	h=To:Subject:From:Date:From;
	b=l1G/BnA/fnOmYluZnxLU304eji2Hv5WIjUYPgaZNuCMmxqJ4iNaVK7RXwQ7Ayf8UX
	 TRngxL+RX1aIPMmiq7EBK8oDi5mnCkwITOsT1B4Gsig9f7KedOlo9Wm/tYDjmWsySy
	 eqhn04698pjRYELeJ4zRkAXg62VMmQSPwFuDavRwwofT9oNGo8jiTUdNoJXg/VX2lH
	 Cx7YVtybMCLBYijNJdMcvsQG8A8M+Ec4egozbi9OZAjX//0DBN884DFrUyXYepeIqz
	 hHgUdW9IPpxpag9OMWP0izfFjaz8Yqn7Rln6cin0f3XGh5MByNvb+t0YNUbbE/6osD
	 iA8QDzwka8BjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8CBC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622319357.23722.5394223909613457189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5652844fbad50cdfc6bb5be9273e44a155130988dee1f75709bfb523d5fa6351
Date: Fri, 02 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746223193
