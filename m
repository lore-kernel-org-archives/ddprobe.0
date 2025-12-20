Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2783043D2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766223834; cv=none; b=iD58csRfWQFXWzzfbHljwsmIjGhsMwI3THQ0SdcL1fp9wMP+zLD1aDB4cwZs0zN8msaueN5uRugiE2XcSCzYusEmnUwEsifOuQzFD7E3Hrg8LkoHAoKx09C5DykCMVMiQeYG5x4V8aeFxJ3NQemrImAAO2NXEeeVZV0CO10tq64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766223834; c=relaxed/simple;
	bh=UZG0FExBhR5WCOb9PcgjHvEpWjYHpIwxoR50xWBd7JY=;
	h=To:Subject:From:Message-Id:Date; b=SbuEzfCtAMWQ3fndXZzD4En03hkuv09Y3HV4KuuJduH0PxSH4DydVA+dZ0v67lVZ642lWS95LUXrpBtYOIFuxMtu7Z2XVXVu/OrUxWmKQYNKrI9Fhl6Zt1ZgM+d0jGPT4+68eqDOAMqs/XGAFrwyFVEctlXfXst+h/rReYP/e1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fK7TsP/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fK7TsP/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A563EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766223833;
	bh=UZG0FExBhR5WCOb9PcgjHvEpWjYHpIwxoR50xWBd7JY=;
	h=To:Subject:From:Date:From;
	b=fK7TsP/Ss3aPEwnJpfbK3nV4kQt9qm9OxOFcro7pTuNZZggWfizfIBa0vdlR5g48g
	 jr9zdnj/OC5fqvlBsYBfzAoDLl/xTEyX/J8q16u2E7mgjpS7ira09XYhPbfE6N9Uya
	 VOZIGjxLnGCWU2RkEKRurL6Tuyd9gYLYrrsM/mSdTpxgSi00joYlyLljbm0M/25Ti0
	 zAOhbAIlalxrVPEoxcnViwfcPrQdEqKsZ4WuqTa4yOzWzCEjwf9lUpEwVB86clPzbs
	 aETjIeZxXmkn67HPWC6ynhko9Cp7wwEgkhMypZIcW3A0jNYut28RMMeC7tUYPPHdD9
	 rOoPpvTh0hJ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93060D637B2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622383358.5083.17946389634708909710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6019ad334f12ae8261885ad095fbf23aeac2da0ec347daf20a52dc837fd019
Date: Sat, 20 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766223833
