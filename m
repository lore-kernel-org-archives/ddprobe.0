Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372D73EA63
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747499394; cv=none; b=tIIfMnx41x1C8g2p3UwfBZDy5zNtwHOBU3Ufb6gfn6jStETBCzjg26TVE1u4StlQuf6d6ViLFtX06N2wMAE7Elc1KQfLynv/w7ry75e+TwxMjjvIglv3bBezWPQAuIH4BGBy5InCv+brbQ2ojeMQfi5tni9cM8nrhcIDir532Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747499394; c=relaxed/simple;
	bh=dhw/8bAZ0n3kghOTHlEw/gQxAz7UeDKELNCTA1braQ4=;
	h=To:Subject:From:Message-Id:Date; b=DPkbuU3kz6TlcKMnzzEOO/1+k5K/TpaNi2vBSXBwbAvswb14vQXoyNASyvuXVWeqby9x7KzemB1T3lXBgCljU7OV0ZqG17BHs8A3mBDqwOL1xr5/LlPuuR+0ZQ+DV6hPKhHJnijqe/izIxOEgmHiqfrE9WVBACslSduswmgmg9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRbcY+oV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRbcY+oV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4388C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747499393;
	bh=dhw/8bAZ0n3kghOTHlEw/gQxAz7UeDKELNCTA1braQ4=;
	h=To:Subject:From:Date:From;
	b=NRbcY+oVplt5T7pwwDriEg7uRonhmepMmtFdLFr34JJma5hVkTvd0QvLoX18MmzB9
	 T5iadfgBhI3JL4FaKiAHmUOYlv5PZbIxGda72+Ya+SRRs6niJoP8ralj6RJ8gMAdTK
	 1DhMRiAr685v51YvwHHGQe4fzSw9zpIXt2o1HCHWUYVaqk0tfPUb99d1l+JEfWk8xB
	 zAR5lVTRvFK1hpW3mTQM5yvk9xbvvGrPpy+xvbENN3PT4leIE1IrSYKuElmYSX9pAO
	 CdAVnlMPC9VKSZcbOY9YKn4IUnnwcpiZRHTrrx9r/91Y3j9MKKGbPzKuCYRSyGEpJz
	 WNw1Cn+FKdLbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FEC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749939357.9253.1972695161472906536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97dfa42c6819bd720ca3d4c8fb2bbd3ed7e3c7fdafb545901dc54dea132a3c68
Date: Sat, 17 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747499393
