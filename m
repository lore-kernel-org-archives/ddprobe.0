Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD17259CAB
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750322394; cv=none; b=p3Q9kNuKyeWFZ2XOWc4sZZlDHjYnHHqW9kPxYhp1dMqGBapRGgh4IdNh+bFF74gYEjWB9/UM7rceBchYHWQO+rTtIYh5TUw00KB1Mp3lKaQIamxPG1HCr9cYDHpzNI3hU1S7jSDmsHEAzOyDOJ8pFuVCLE1+UpGZ5VeDuJS8bOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750322394; c=relaxed/simple;
	bh=FISd9Hb3v80t3X5ML1FbzCsltRISDDm6k6vGiiJCmyY=;
	h=To:Subject:From:Message-Id:Date; b=pX4tcGSR94wogEpI9W63AVGGJRHdDKvOvTMxGe/IiOaKXQ151j15FoBeM/qcmEiqCeyLpGSnLr3QJnpToXoBkStmGSXOaHn+5iJyBUFUk9ND9/wb/ijX9+nStPayN+y8/G1Lhta4nJdBgB1nqohKVKF8V3B5rh1CBK/v1uAeHcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiXiPNpt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiXiPNpt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B24C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750322393;
	bh=FISd9Hb3v80t3X5ML1FbzCsltRISDDm6k6vGiiJCmyY=;
	h=To:Subject:From:Date:From;
	b=QiXiPNptgQfV+5dobQJaam2zARDhutEaEVz3G46Fc+BYP59O+JzQLNKf/JiWOpAci
	 dv5zTvaJjtcUUainX1n5JaTtm1jHDByrf8jwZiJfAGBxPrL8uRkKpZQKN/1vf5ZGwJ
	 yg0rlTBdw6Qx1GPXSr4oruW9ha5km9JQfGlapx/3LNYnHFqoxCb+ovcUpLgSRD9WM/
	 cGmRbntGpoPanlYYhZpA1lfGxIpPfCB/5mDGCdba1EWRV7n9CmHj0sk1q7K2WZoIgk
	 gBOHXfB+39vMseRi1jVodjS+E6VhOthC7Sl2k9ZTRbEE8VRWPvUwVl6TQUNDa/P5wv
	 +j2zkhplo9JbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EAC7115E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032239357.18231.17528107077379419084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a833a995e562775f91ebc84a4ada101cf628b411074542b62c7098d01eb30425
Date: Thu, 19 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750322393
