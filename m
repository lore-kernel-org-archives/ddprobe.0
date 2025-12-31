Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFEF30FC3D
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767162234; cv=none; b=PVZCGzql0R1eEvt69BafRhF2Oq2SpPJ/AY18+qkaxrGYn8tIzrfkDhLKlb+fyV8shkO/JdUBezSGxXx2Sjt0kE0loXmjwYPbbv2AsQSyqin9bFc+7XtsTnwimrMkW37dJs2QQPk7r/fxApTnzNq+BxYim5zxk3Hp8WW+x7LzVbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767162234; c=relaxed/simple;
	bh=pCM6QIkygXthWVx7lnMW5Ndm1f6w4jw60qpiAXPU48s=;
	h=To:Subject:From:Message-Id:Date; b=FcbTIdDpW6w1A2MvRAVXZ2A3/JWoPidemkXzaM9bQzdZ4APMtYIoMU6V3ZRnHSPVAFASRB6ka4VDZ1nxX/EOxxzG7wnHzrty6c4q+yXHpxroiLIK185qlN7H6DcMBV7i2rguo1yVC/NzWbP/j7l7p/kF24JyxZXMjSWYpbTl6n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tm9zoH+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tm9zoH+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0199C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767162233;
	bh=pCM6QIkygXthWVx7lnMW5Ndm1f6w4jw60qpiAXPU48s=;
	h=To:Subject:From:Date:From;
	b=tm9zoH+OadkbNHP3zkEQjNHaiPF5W+dDYL7tRJwW7PtSMcNvWauprNrRwc0c3Dgbd
	 MGfh8TIFbEe0A+N/hoD0AmJu0Prz/LV6ptzr+++VKugB4FVra/FeiH/9XHxzfKZqtC
	 bS7nKnSVHJ3ALqGccrvbvc4d5te/QjSy+lKPSUu7R+3/JVutiL0Bzu0XRACPB7UnIm
	 ztphGOJuf4L+Ot7o/rapjS6RCDcZ1v2Az+oO5BgulFs/tSoFQ+cQiS8xTHlnv/H14c
	 nBnP4qdwiMWoQfmOZPiYb+8RudyS5nNjcyM4Yh+o//kPbhCEJ+ZfGC7MYNHNkCnvFD
	 MfwtPyFCx4g1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DEEE57D1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716223357.17199.17509604099238171324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8053d3147845e3762278aaf261af55cf28470e380d049b9e493ef076c49dbab4
Date: Wed, 31 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767162233
