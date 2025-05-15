Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AA92820A0
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747274394; cv=none; b=UOpcb/TR+3Y7/BdPEp75wB33UKwSw96mJaOAQxqgwFO6cTvdjHtGpV2tcCh4tYAbG+Kx6gdT/OMRVDEEUfwAv1VVI8mL+DRY9yDQWtvw3QwhT9XveJoq6trCfO8/DJ82xXDH/5HoalNvhCnsQqIbq5wEuNkeTXl/p0P+RmUiQX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747274394; c=relaxed/simple;
	bh=2g4L62QtZvUg4sF/8IZnRwXSa8St2s8g82Z9W3b/I9s=;
	h=To:Subject:From:Message-Id:Date; b=Oud1dvq3Wwj9bh2xmR4JdMlLyzsZqc9latsM3GFqaDPBcXzKibcyN1opzguuR87UYtOKRGpHxFGBBjblZZ3GTbax5NxMwjSqy2yHAkz8asFHJouz0Xmz7Ezow+1Soph3YDskxtFpq0BLQYy8yXoREEzHj+0ZKrgf5SC347CrQp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ghdtm2/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ghdtm2/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D1EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747274393;
	bh=2g4L62QtZvUg4sF/8IZnRwXSa8St2s8g82Z9W3b/I9s=;
	h=To:Subject:From:Date:From;
	b=Ghdtm2/ZTCySKWQ+R7X18K78+IU2TcgYELRK7ru7t21dwEbWZ+fAD47G2umAtEEbr
	 7oqLeuyYIv8TrDRnu/OVv9XYVqVeb05Paw4nyTV24rUre7cx9QGoK/mOAIE+RY80yF
	 ckm6hstDMAapmh+VuK6X1vtbqCm9dJvIs/di5EUFIMRmsBD5eYPWP/+HBWvJpQzEnB
	 bHKFBWuh51JDZGxSzakPwMEvx3xcZt3zcWkYVbLDD0iae8O+apkpl8uLtUS11bj4zt
	 D7vDI6FvTipNVLbhU9D6nayYhVm3QwP7BHYo52cAfDXvy2lp4k4fMXlG6sNpnDKw16
	 4OnLqalkhkO4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB7C3ABDA
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727439358.4512.11743430120908771088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61985220c22c4a5828af1ff3d675202936945436b68d8f7158e7de13e14db494
Date: Thu, 15 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747274393
