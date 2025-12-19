Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB17236454
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766166834; cv=none; b=RelfN2K+73lHFVolJsUfOmSOVJ1+jsegBr2WEC3yEsnJzs1TVLYDEkHG1j2sRsmMoQE7NrSeGW01TjizrS7rz80aF1+InHodd++XbHpI5hpw6qfyXF6Eqz5z9QpxsZMXpEQgYP9Kh6EaG/NIHXIMTcBu4s3RLkds5z0ra1+d0KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766166834; c=relaxed/simple;
	bh=btSDf4kVXJxfR3ZNx8PXXouSCSnDpJBHfgaxfi3jvNg=;
	h=To:Subject:From:Message-Id:Date; b=Eww3WB8Ttx7HfXztAAgi0fF2te7x+Xf3jslJWa5SAc8PfslEx0LNyG3M3TAKaCEHUh6zoeHsWTsJIFL2AV/J+wEqN3ypQThzxJZ+NgnxplcjLabxdpby70ZcO5JI1tRhOQutYCe5EfPhLjWPdq4zWc7PUMuAFY/hamKS6YokXfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hM1XPqrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hM1XPqrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F21AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766166833;
	bh=btSDf4kVXJxfR3ZNx8PXXouSCSnDpJBHfgaxfi3jvNg=;
	h=To:Subject:From:Date:From;
	b=hM1XPqrqqGuxjulZEttiDIHxkdpJ4Cf4f9DZUWKiKHhN//+P9lX/dtTTQ+C8yXHI6
	 P8oH6ltnZIHFC5SKSGmWRU1BS+YwSP5e6PeSSApc/hD0mlstFkr+KCbVNIDo6YKYmA
	 HzG09yz8RldAPbD510XIuu5P/N4pTxNpQo5Otuw0kiBXi3IXfGWUTW6v5aEAyNNPlt
	 y1nDNkwVvynn3sidjRv2Vg6ZOknLXPsz70hodsZ0MtJt7qwCrHqGMbyz2sO1xi59xv
	 clanfWS4MtRW/ZVGBZuJV9puKoczp4tCdG9Ak4bHc7PZvVeY9OiTMSjCpNSmFP//g/
	 rjtoV+ZGZEZNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907C4D78770
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616683358.22508.4580588946457220039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5a68a1c119383ecf55766a0244ccbdb9dc8890946f27ed448742fe47251844
Date: Fri, 19 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766166833
