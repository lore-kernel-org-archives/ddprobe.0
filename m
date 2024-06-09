Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E12FC19
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717932443; cv=none; b=I/bM/PMB/5R2jRSdtIBowZ1qb+mLFNsYiaLVO0PcUkvoPqYdJXm+UH5OY0e3lmYJWpLs2/cBUJiLqRrmmn44rZfDCr3Lz8yiwdHCcRPYuY+4J9I3b6hatm/PyOHpqO2N3OtXY5yAwoH0xAKTMjNI2LvHpaZACNhxkApIs4iaCtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717932443; c=relaxed/simple;
	bh=pInSQKTf8froGaYF5q0M9w6h4F59qj/WylfFF87scOI=;
	h=To:Subject:From:Message-Id:Date; b=gEKTRx95IvMI4t5AvD4xy0+LZanusQzRkjh86+wcKZxrO72/4sd6CN9maTR6GnImlfwt+QDa5Cmy7Sm5NxkyyjpPwRipLo45me8cUFShTMc7NYWMY6YwcOSvic6KmooSaDI4UwMAHUQv2dCu+sMw8LbHamPAnzCpSFIML5sPZwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5s28JrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5s28JrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EB6C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717932442;
	bh=pInSQKTf8froGaYF5q0M9w6h4F59qj/WylfFF87scOI=;
	h=To:Subject:From:Date:From;
	b=a5s28JrYVkI3D/FXGrgciqUHtNT+kTfF+Jt42mKZfBuGWNgKy5h7/c2ONp05G6uNf
	 H1KDTWGsvccCLw8bphCERuzw/Pq0C5I2HUaDy5ntSpH21A1mspFX8CjSgx4bTzUmpN
	 kBOE2gQWEV3vJzVSF38fimRATdzenrlFSY5Hr7JGkzcgC1ZcwOAgAjLpASCfIeE0er
	 BqVM3wGwOQITjd9OLFVO9vnDzEeplgKlRmmemq2ApbLv/YpgnOZQjzlDSpdr1wPvJY
	 6h2q9CfdXIrGwXgUrnC3id3q0DQJ2Pp+kQ/6Mzu2fba7MEHQa15oBgCOXJa5PVWNqd
	 PKqA2HgIoyQxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DF9C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171793244276.15471.13175122123458741304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fd634f5bebb66b6a89b66bcc9f89f7718d364e94ce3a0d185a75c077bde05d4
Date: Sun, 09 Jun 2024 11:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717932442
