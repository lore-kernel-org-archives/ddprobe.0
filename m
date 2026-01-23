Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20F52D6E62
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769199234; cv=none; b=mHwVIXhqSWzQe83wL0sR0+Fcy0LsdY8/MBCKyHFvl1xHFSoidXpMXgkBJQgXv7jO3aB5kNFhv7ppTLJLf4ubiU9isJT3BdOtY9MY5ZiWPu4JH3rYhzbON7Mz7kWNBnMm45ETGUrZ9sM2rpnM8j1cXem2lWoeW78JCj7nqQYit3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769199234; c=relaxed/simple;
	bh=8a+ADlfCDVOD/jHHmh0iNeam9deUU+Xqx/sm6OFh1MM=;
	h=To:Subject:From:Message-Id:Date; b=I0LeMrq86URliD0q7HBc4UBoyoG/791Jqlr6ugDmFTsZbO4j9lHHLmcKwjrIp3w2E9OJbUAjN0dQaTEHOUzJXi/IkG56PDjGLg30YwD3n0vpcr9zvBuKBWsNA1WOufnV5yy0+bEJ9IsF14vGqiPXn8H52fX2K81nbsQeMxHyguQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCZiuShg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCZiuShg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6D6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769199233;
	bh=8a+ADlfCDVOD/jHHmh0iNeam9deUU+Xqx/sm6OFh1MM=;
	h=To:Subject:From:Date:From;
	b=jCZiuShgBwyY93/1WJNkt2Y7YEoy4ctJYgRgWNifCLFvpkdrNt7+A9qsuL2Sfj20O
	 1Zt+kOZXK/7HgvGX4RHfOvPzCRA2+W2QdF/ZwSjuOEvUFWScZj719jZy4sv2DvzYXg
	 SgCwpPg68Uf1dQssxssIqTNzb2plUHKr2Nb+FzupNn85N4fQ79g4RhRhatsUwSsr0a
	 K2Fqz8rwLE1MNEep5c22WD+HvFFygiGE2A49qp7HFdKraRDaRlPAHNJN7IBchVoeWO
	 5NwmIQmUxsJ9tBL3VkZfFNFRl1Vslm/6Q8M73lrx0l2/CDObxCngd+yKMHhFAZA5wm
	 yaaLEiIJpfQOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF80D778B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919923358.31227.6239809220281007384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448449e33175dfb3cce811b9463051f7309fb38e8bf6382472c526f90d139978
Date: Fri, 23 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769199233
