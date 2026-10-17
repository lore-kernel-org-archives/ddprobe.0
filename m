Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A781F30BB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792224034; cv=none; b=Kt1h+3XdtaC4Cq1DY89FIejdOiublzzFe2idvNIsDjcYCu4lhj2a6HQYS+i8toQtQepzm5KmfxrioXtOwb35R0ky8KxG3dnTMA0Ayc4sL/pl/N+hLP/9+TC0ZzxAAfpzxKZti3JI/kF837qpRQadReBqFEWiWY9sI9ZztHRFK3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792224034; c=relaxed/simple;
	bh=UXxrx6acXi0Q+beEPF2t5NKNCxdTAQk+WcjKx1M2P8Q=;
	h=To:Subject:From:Message-Id:Date; b=MQU+QwHvl4EG1aDBaKsX43KOe44xtjUmBxhsdlkCR9tT4P+BVq3kZZLc641LbReS6IoDGfj5kwsSoZ1SrJHErYxqs2xp6xQ8FIkfTVIyXjrZhugGP0Nc/046TIaVTNSzFUNRCRFPeC4YXh2xWqxGJ3lKqE5tEXXKQGRGYl8QaCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqNk6ejt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqNk6ejt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D325DC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792224033;
	bh=UXxrx6acXi0Q+beEPF2t5NKNCxdTAQk+WcjKx1M2P8Q=;
	h=To:Subject:From:Date:From;
	b=eqNk6ejts5Rp/K3f5bleELdibWgrY9vBRN0Vf+nyVTqvh9lIoasQ/R7D/B8OIec+z
	 xex2cvjqmx6bcA/Jp7T+ZUmIjqmvG25OFHmbWgCbsOL5wS+9ihxUymnWNpBimOCsgW
	 c2i0JfOaaghasI4b3Tm5Wyfbv2lqE1Xgmy8KNej43IOiSUs2L4WZbUTCCUuG7CB2fU
	 D6ZnElTCz06vbMpWT7UgrcmJR++5bND5XMVilxb0MIRHavx/7JCW9ilpkA3MjsxFjn
	 qfddxpfYGKv+OZyEQfbHDe++Jvaw3XMcfgT4cP7uvWhRFcG1d3yyn13lPfc8MyoDq2
	 4D4WAZdH9Bc+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9898CC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222403368.9627.3348562557907397989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5d82c02f7aa035b04730181743b2bf14be074ee235809b625d882354682181
Date: Sat, 17 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792224033
