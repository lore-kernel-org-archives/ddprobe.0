Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DE32773FF
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774329894; cv=none; b=eoFLe/qs6KiRX8TX6eOJx4Wdi7UvdwEGVcn+axtY9ple94beItLfjDwDQAfWPyj6O04/ARKHGaiHbuhQOpZorJ6YsEKRnXM7aI2Zdzgb1Bj8XDb1D5X27XfRL10GNXyS4pftxktEFxZbSibdeMe8Mmrjc7eYLJ4Id4vdJm86zCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774329894; c=relaxed/simple;
	bh=0JibW6UfeU8AQ7JvRhJf0Sqz1QKaVQf6hjTZ7jJrOz0=;
	h=To:Subject:From:Message-Id:Date; b=m2Ti744v4rPG+qbbNEwo4CduKlD+0G1RbLANa18r1tVQc43TsDWK/xcLVjWNefjzW7aTdVsDp/wRY1V8dOsI1CCVcUH6Eq7xYyfDjJRTArLZli2pFsOSicKMm9gh5K1qnLcIG7SKGWIDN06zU+NsiCAqDFjjkMMLJn5/hXn+paM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2tnjYQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2tnjYQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4700C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774329893;
	bh=0JibW6UfeU8AQ7JvRhJf0Sqz1QKaVQf6hjTZ7jJrOz0=;
	h=To:Subject:From:Date:From;
	b=H2tnjYQFnGH+K1d8lIGrO/ssY0jvCXl1dkC7/QXk9kZt7/4YVFGD0rRSqmwJhmIZz
	 OnAuyE1aZdIlOIAzQvdZMYdvaR8WdisILHDs/5pCgn0W5YG90mtJUITdpyfA0Quek7
	 UFXjl9uEuHnf97pIr9dBr9E1OJbUjp0bDw3Uk4uYo0W4RGM17qpZmV5kxl++M1q4VL
	 U9vvuRzqxjbZg086OLc0oT/r+em2z6V87ihNi5yqIDdilaOX3V6vNvx/AC2sXGkgWO
	 6NOy5GqOtOvgkmHht6YBI8rwpi7f/gXotP/aWLft4W8rXqqNBXWTehGFT/O0iVWPij
	 DhILPlWi5pCeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911ACF532D7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432989358.4123.6196208726405380501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e803acd85d01ba81e4c1edda92630d4050e070c6dce1434d680b00ba12960ae
Date: Tue, 24 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774329893
