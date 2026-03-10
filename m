Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBE726B0B3
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149694; cv=none; b=hOmUsqgh2Zq6Z7TjRfDK7IIpudRtPT8KPiusEamm+oO3roY2NHo/ZuSKqis+SSdpTxNRAzeqS9vMGmDS/Hc1TrR10OF6aCo0Dn7uLbq0Dz6i4TJpq7EmcEPGcV3Y9ihlIeoAv6UiTSsIyuJwgATkmGSSOGb0Vj+GjgA1a7Q/igw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149694; c=relaxed/simple;
	bh=Z+qOwpF5plfB93Nc/CMe+20SMtFIYPgwFD9JnqQKRpY=;
	h=To:Subject:From:Message-Id:Date; b=qH3GQI41vGeTJIrLr5AC7P5BIsc0wjmE9AryeH4SPe9CqqRV82nQKJ3vDxazW7BiKZGju6y+aSlIY7RpWAOjA8jQDEE6tWo4FWxv7J8rG4VSymjM5lm2a0ot/2VviZ7BLdPIQcenr1aJpHe0hj9XN6m0iFrsMS5GS/zH9BoOD8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UguPserC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UguPserC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA41C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773149693;
	bh=Z+qOwpF5plfB93Nc/CMe+20SMtFIYPgwFD9JnqQKRpY=;
	h=To:Subject:From:Date:From;
	b=UguPserCaoE3gf0tcXtO2dYQ1RHQZi5uaTWELtfirVn0vY+w5RF8iGkMIhMwny0jS
	 yMC6glqIkeAL57P5kEzTM+FrHOxkohYDQcy892j1hkqx1t+tImeFNMG89WdkEEyS0K
	 U82jamdYWkDiYI+rzzsIMrOj3TCNw/WmQIJJQPOdiJgKMvO9Xai5NUFo4688nMBPU/
	 zA4ZMmC6tlVl4AqVqyWO1IVAnGlBiISNmolzdWvqcA2tLYZvBF8prR3L3I53H0//MV
	 gKZiK8hwzuzixgUCgbx/cE4ln3L1PBpxxr5xpwlN6wjtuhkFE+Jd228kcekCLCcvXW
	 M/jO8PS7nL5ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91781FD2D84
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314969358.10790.2088310852585601772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043e1f7a6729f1b3a070bd40580d22f97e518cda449ac2a64d9012f01da620df
Date: Tue, 10 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773149693
