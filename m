Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16382221540
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773591294; cv=none; b=dL3AHQtCy0Q9T12WoSsxM/6C/G5dYgsH1yRKJZkr1H9ZBxGDz+EErlLEjHZypacHxG17d+4ZKbuQ4FiZbMjoXYb4nXKkw+mEHnbRrr5AruEDBLrQ/xD7ukK7TWrnSmvBzmNahT9XirCbtpS5ZM5Cqkj6sHX8fIFJMNQlXFUtfHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773591294; c=relaxed/simple;
	bh=xSmN7p2sGPggjWhjt2lA4PrjM4eiNOgFx0RI+rtrkMA=;
	h=To:Subject:From:Message-Id:Date; b=jgzuXhKpZSb0reBcVp6w84HG0DmK0q6XdYeYosdQCqpocZzrx5eyDwOmYMtsyzLxPH8ndVgAU/y+VPln5EDfFpMp3bzqAAU55GkxebVrZPOEpMmIVaPY6DTG6Lu+2aowYWasowPoFV7eK44n8y5EqDinrqk44gh0wllIV0wEAtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VC96YlU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VC96YlU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F6DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773591293;
	bh=xSmN7p2sGPggjWhjt2lA4PrjM4eiNOgFx0RI+rtrkMA=;
	h=To:Subject:From:Date:From;
	b=VC96YlU/pPUcfmrRR7kAKDvLTtxt7/QQmkt6v5QbomF3z+3+MQ09Kgxq07ZFHfTUw
	 oT7E5bNPfpXcbHDpI/sQCog5usF2sKkellGXA6HQvgq9OxoGVZirXx6keFwymsWJZ5
	 Dzt9iQvqUlV+2LqfE/lB45buUfetnx2ouCVr5IuP0C0lBMKXTrM6ELYQzft109ZaLr
	 Gx6abdyw/Gk08jjvJWtRGEHSy7IHMciwqREbyIBNE0la8KHZrZtHC971/9sKQEIj/0
	 9xPw2Vd8lxL6slPjRYxTVrNqMYYCPKY86p8j7B1uaVX2A6bwDiHO+KSI1uN+V0wuT5
	 Q0u5AUHLgqARw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D36F3026D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359129358.24313.13574271787748389463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ee1e79d4335ff9ddf5cd9cc01acbd922403e4556840d2b154b06a73fa4f06d
Date: Sun, 15 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773591293
