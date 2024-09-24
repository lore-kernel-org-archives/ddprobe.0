Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3526D1AB6E6
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727191554; cv=none; b=rHQx5bhGdEYGT5Rwf0Mr8UoSKa35v0Iep67mdBfqWk0A/xQDKeo7JaG+HMXoZgUau1fU3E9xibRJ7SSvaiTiT1Tkwm/zp4HN7poykteP+6+krF1Z7udeEwtPCKoDsj82oCPozmidcH0fdMec6PgeZ5JRTz5nVL7yqunrN4mcLf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727191554; c=relaxed/simple;
	bh=mXTXQm7RL1IcZ0r44++HsHxzh7RCqHvSed1j0MNXJ88=;
	h=To:Subject:From:Message-Id:Date; b=OyC3TYW7bhFiEOtkaNX+knmLTF2SBsQCFUvjjOS2+gbHLqTSGKdx+hnblfbrs5G25BjIiY9Hor6rCW7ZvuJcq64HA1Jks1IyJ2eQWOeRI4WLnzlemwbrWGdDBfJUQ+PHcjJtPu5pu5qdL2+grbiy7nMxw4aRJt3Va7wuUvcJsjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBMvwCp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBMvwCp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63B2C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727191553;
	bh=mXTXQm7RL1IcZ0r44++HsHxzh7RCqHvSed1j0MNXJ88=;
	h=To:Subject:From:Date:From;
	b=OBMvwCp35gybTPAJurVX2J441UzIp7x95+tmh03kDzatFeAnjSV970e0g+BKKqKX7
	 dwEVd/7AP4xUE0Xb/vXhxtZL0dPAHwT3qQ8OWmBvt/JgnnXuNrKFQMHnmgCRASA8jN
	 CFfq/GidJnLzuaPgalmaTo2RdsvLYvP51GOqVC2uYDrqx8bLuWW8oGQIV8R0Eunchd
	 JmIMaD8wuNXX0S+SEZpP6OLrysJEzgSUPIvvM6j3TWHyNeLzUSYsK6rNQqJeHbiNBC
	 +9In5ycqkFPt3b2dvTPIvsyBjA7mVfxd/a248OXCE7gjWzBwQWb/UcGzaxcCq/ghJB
	 gNYRFn3rjwBzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9793CCF9C6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172719155361.22172.14733163285158659035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e8ead54cfe71f118dda9bc92d54993b8c29b64f3a3c68738feacb67b77262c
Date: Tue, 24 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727191553
