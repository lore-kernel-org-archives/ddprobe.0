Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FA247279C
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787140834; cv=none; b=e/bmLVEJwoME4CKt07C+n1RVFoBHiIgPPjuQEYWXrB3vSKq+xuUxv7iejUBl+9WLnZLxl3uMIcAevAU2VbJVy9TW6z1kUsVyhWTIsVI49e2KOxVSuLHtIDUD/DtfJV/Dn9YgAq/PRElqOHZ7g/3nj2U9IKv4WBGIy8ZRN/bD0x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787140834; c=relaxed/simple;
	bh=cyJ9wqnSJBb3Ee56Rk6Cwt+nWlYd0j9wYEv8kZWxI8Y=;
	h=To:Subject:From:Message-Id:Date; b=doGg+b61combid4e0RA1hrjk9VIwsMIuiOsyd2exbpKEi7coxPPL+vddteSGaSvF2CZvg0KwDOZVjUjiYQ2JGReRKrPt+xIfMsReVs78lDGsQVY3r52F+WR+VekUD8Rtp9PdWLsPooxxGklmO/48dfFq6pHvbUvXzMf0HrgSWAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oe8iH8oa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oe8iH8oa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2779C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787140833;
	bh=cyJ9wqnSJBb3Ee56Rk6Cwt+nWlYd0j9wYEv8kZWxI8Y=;
	h=To:Subject:From:Date:From;
	b=oe8iH8oayFc8uVDMWrrXeEqacO/QNqa6ojLNy2HimcQh1HhcikiKWwqDDIVDS1CsD
	 4GN7qWlmkOraHOlz2QI+w9zRlSHkErd2MRxRsXj5GIDRX8mZW+dD9yqcTCK4BMt8TI
	 GP7BwDBXGEiNRU6tBONEfcC4QSesCewyxnKNLRS46GQkX3IKo6e6XVOI0ltXYcolb1
	 fp+N6J5qtGIp1rNncbwySPnUtxbuNT2NbEiewQnHX4OaHOQMRLul4eYH3WZO/3zEnb
	 qx7LUoEZKggaGJq+KYaKPzrA2xb6OJHukjxkYdL4YfYXpYEUM8X/shRD6FMJFPIuaj
	 4V5AtvbyjzIJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB899C5DF86
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714083369.14104.8147009293891204622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822eceb948cf86118c512b5172358cfb3d40a2267a055212d1c62677ac6bc885
Date: Wed, 19 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787140833
