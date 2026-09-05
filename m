Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A1D4CCDD5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788576034; cv=none; b=eM9zeksxvyb4Cbun3unkl6Th9Jug2hAKWqAxK1i/LCt/cx5hboTidY9yt14Xkjlo58w21M6Zp2Tce8sctJ2mP+CQFKEnpvXGJ7uLclujISkiH7enUMdmfGJ8RYTqCVMECK4zEe0U9aaAA+BkjtoicIM0eLvzHzmdNGF/w4AZUA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788576034; c=relaxed/simple;
	bh=DWnCbGapjPYdQjvbicswmRjb2zoAi+Ho5qczRWKCK74=;
	h=To:Subject:From:Message-Id:Date; b=HCRTPQQ6u6dlmUQ9hLlWXp2wdfM0mwDl/k3iaoahE6gcU1zT0CITrqT6XkXqycxFKOd/v5bG1YyhoPCtD1hf6cMILECsV21Pkzv9Y3/YYc8WApDkI83MlomzUGPx0uX87u0c5E3CTvwZdilL9iown9aTkYC1DGR3rM3SODldxFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfX6J0Bl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfX6J0Bl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB76C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788576033;
	bh=DWnCbGapjPYdQjvbicswmRjb2zoAi+Ho5qczRWKCK74=;
	h=To:Subject:From:Date:From;
	b=GfX6J0BlnG91XNKcESLF1/InVVkK0e/Phbwqd6HY5E+drIMj9dy6aNSFRW4jVK/nn
	 TbH4b0oz/yGggwD0G6UYkLglOOgkjpPrsepcpR8ScZrJF+TGe6SxNouzEmCq03yB/N
	 huG/o/W1M7nhSzFHbGPiBzAbpJhyaRmmN5ea7M2e8D8SvCSbiehElP+IpXHlQ6JaI3
	 XSeGGPI2ODYvIsFiEhkbp9DJ88fgieKVA+kf39N4fzZEsQ4uYSFKR+gTCuCdf5uapY
	 wYF40d+QZ5eY1MieD12fjSPzYMSlkbQTxns/n4wfuNSNlR7fbWY+IRuFgCwGUkHFz0
	 fLRnM4XCTLXKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3881C79F89
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857603370.26315.16937992440685749857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14efdedff73919fe2c37a1a562ee9134019c15448fa3e60abd74b8e556768822
Date: Sat, 05 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788576033
