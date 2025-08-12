Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D082E7BD6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754989794; cv=none; b=gfWpJb3xroI1JzOvqGKOhLlOuYMMhNUBwCVCt0DNhnZqAzMAnU6hOXSt7yDPGmfdnxt9/QdPcf+tGWvdESQgkHUpL+7o55ycE+fhcb6/knNkaIT6vUNSutsy3URECffmrbuHnnSQjGd7LQKVnc2TiEHq8QYuVuVs3QsqLsUcZOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754989794; c=relaxed/simple;
	bh=rvlUiyvBq53AUasA/04a2RnI/iX4qN56IwJ9QJLb8Wo=;
	h=To:Subject:From:Message-Id:Date; b=Z2hF3AXVCdkw9HPsjaXpF9+8KIaHg6oNfhcjw+bRbuVCeWSy/B5EmB1Hr6/oRtITDIkABRvQOQWn759/BwWGbl3XHmErx3h+FhWPncMBDSDkOHxMPCwjB9MPiFVViEMqVGRIYUk+J7ofpECtoZrKH7fqD4haUCjF8btkpxnS+4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYSB7Io2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYSB7Io2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EADDC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754989793;
	bh=rvlUiyvBq53AUasA/04a2RnI/iX4qN56IwJ9QJLb8Wo=;
	h=To:Subject:From:Date:From;
	b=YYSB7Io2iAeZVcu1CMlLtwfnseRdTPn0ri9HasDdgDlS1YZynne3ONQD8OqZbq8x0
	 ZrgFKIGGlav2tYaMHgnY2C+5iOiFaU6TwUmadjHCNNmyTIM54aVIslw0EJodZDblAU
	 VuT02oOq+nEJwh5JAUOsy3AQ9RT6SmPKAtTTJUaOhERc0+pBJBVuQRQaSApDwFKya5
	 g1J4R7HERAEgfMrSkyC6BV+gNFU5B2U3yXPtZKWQYr1GJ+kXA1ur2ZHSFEklKQFlIt
	 yuzKueZQpOH+f6NZDOQQp1dETavrGWWwpNkxLT/cX5bGY2pTCdnbTtCgBbfs14HBPv
	 zVn+S6n1v2AjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F634CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498979357.2152.15374648990426225642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484334a39b6385dd95930c754f15c2d64ba0820c2ccd07b636255f600a52fa12
Date: Tue, 12 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754989793
