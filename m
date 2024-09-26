Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2823815C148
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727379954; cv=none; b=cUteLMbfwZNJJjTZpTh9fASrLi2j6hTGGGkclNuzdHWRU0BKRkseRp5YPF2eh5stuOLbJT/CPVmC2jfKrXRJzXsjm+yWruWt3efLh3lteW5vaRL4wpAn2ckIQKcIcgV3WaHtFXuxn6GOVgV1ZAqbgLEoul4dL/HKKt9LbD/n+20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727379954; c=relaxed/simple;
	bh=d3a51jfDMmAGyh/e0Q0A/ef+xDGAEhSaKtDq/wPyIDE=;
	h=To:Subject:From:Message-Id:Date; b=efvXmM97BUCzWl1ig0bIOPM0bYgQktF4oUlHrId/zqAD7C49IukW6Ot/bSRkvz+zHNmSVfhumhv9rTHrp91BpfuE6FCi/6XHzHk/pMzlhBxvYC1irFRFDvmz0PD2AwPaKbai+VY1N+zRDViEmnZv7+4VB+tJVwRwPUx03pnHi7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxLYZEGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxLYZEGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E2FC4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727379953;
	bh=d3a51jfDMmAGyh/e0Q0A/ef+xDGAEhSaKtDq/wPyIDE=;
	h=To:Subject:From:Date:From;
	b=fxLYZEGicdzGMAG86UFBe0aJ3+H/7zmhdJqGlKiULsF9Lmn3PeWg2jxCGnU7jKbPB
	 KimcAV2wwO9mf6jbul5u+SoUy5Jv2Zl5YY7Tz3V8kmOGB82HgrlS23NSjMQLpnKZ8b
	 We17nphi2Gh3EYBrGbeOxsqb5OaZJovssbgYX1MEnhuNTdMOgkZHdjmWgeNTmctx73
	 7V0Hi/fL9++OKleSPIEndNMdFMyRDXHK1wiegGIWFOpAr7EOH7jIkswRDHILDPDtxS
	 6ZQP8j84dqIo9bD+hoDaH2A/MnjoWcLpvvoY6gyoXIAVeFayhP3vaeKNEhzvsI4ItB
	 TGirLfJxQqhFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F8CDE004
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172737995358.21326.12210428373641061511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab858ae26751fa61b5c0ffaeb32d56233769905f80db670f99567c660e0a7231
Date: Thu, 26 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727379953
