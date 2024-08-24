Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F48EC4
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724460954; cv=none; b=P53Bqd1hXKBGGh5Xs2H+jMQuiOdPYWkLOV9RYrsQkpEhwSRN0CAxQoWJU+Y4X4Ju4+A5VHvj6g69cfRr6DpCwT55+Za4krExdHc85nr5txIcH16soW/Lxrl/TAAjD/5vpccwEMPFLkMUOMjg/KxUUc8guoDqJk+t8+cf5QvohK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724460954; c=relaxed/simple;
	bh=B5xpH3P/c1SUS4V5lH+++7EwZdj/zqtemWCK/g8sRrU=;
	h=To:Subject:From:Message-Id:Date; b=DhsLpL6Hk3Pg3Q8lumo1DSkU+zOu1OpaPh3rJVbkjvSUTZC31zUVa4h80Z2inFuz2TGIp2j0RNjiJkwqU0rxT5ULSDPxBp6bea11pmNe5Hv0h0/73kOvt30JIMoFJA+Ib4hQuo0fWvjvf/ewzcPPS7KpvuW9tCtoG1/Nw0NqD/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0Ie544q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0Ie544q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC024C4AF0B
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724460953;
	bh=B5xpH3P/c1SUS4V5lH+++7EwZdj/zqtemWCK/g8sRrU=;
	h=To:Subject:From:Date:From;
	b=V0Ie544qpkXLnhaV9vbNOJBBxfJa/bn2Z0aLSlOQpKh9ACLxs3rqq3hVqloqiacec
	 m9pRwmcbLar22H2YEScAMo/vw0c2Qnm2emQE0o+ZocxM1ZU3zT6ByDo3p4jVqXtp1x
	 XYMcpv/Prm68zAo0k398iqEfSr6n6mH2RvIb7hrfXeflfH3R4m86HF1oQNCvOGFW0O
	 aF1Bv7zXo7dMQ8ioHFpkxoEY0EoRnMuWJ91VKgr4RUf15R0TymLPJPLPr5GXRDqmts
	 byvvFoVY8gZOjpo2eJ1GfmSjm0AlLbpJTk7+wI90lcFT1VP0FKnUFEQUUl11oYq9po
	 gCpjrx/4pMduQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86D9C5321D
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172446095365.30351.5362357313270023295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b87798ae3172e05194e52f477fad19ad7aa8ec92ce6dfa78d0ebce9ff83df1
Date: Sat, 24 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724460953
