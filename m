Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108E829B224
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773385494; cv=none; b=SI/jNeh6q/VxrkTPmThV+Kug3d4Sgc600DWCOKlez+yUcklfnMhsWaLnZBles7kF+1kQH9CLpU4fWjN6BiA9U8bTc1x1qw4uH9roGpjip+pRi3TJwrP1RQoEkod/KAWcp/jxN/mlUev6258qMqs63zwKz9BN+fFldphVv8k2tD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773385494; c=relaxed/simple;
	bh=koXJGvdaIyBMUg/g1SswjLA23fQEwJMmcP7wWmacd7o=;
	h=To:Subject:From:Message-Id:Date; b=litKLPrv/2Es9xvlcKv9em63VYuoENKSAw918C9Rss7TQEMTNY+YDrW+wMmURUmOtBhRL+TiZXwuIzpohHV5xYy0hU3kGMyrGap+sfRxksEsUwfUzrMPPpEqbYPTp1eNm+m26LbQpRqtX8lwALZQIioeHzWx+1GKimiKfU4Ey6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOqB1t+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOqB1t+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E3C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773385493;
	bh=koXJGvdaIyBMUg/g1SswjLA23fQEwJMmcP7wWmacd7o=;
	h=To:Subject:From:Date:From;
	b=bOqB1t+qXZ1N+pqxcvDDIxPDSgKUSMFaphEHRxasKEYPCnU5l5I5EDYevZZxsD3iy
	 EzJebyPHWHGDSgMcKH1ajueMWIVGzSfy7isJzHARwseqPu7Qg0gJ8qdYC85GtimGV3
	 j6pkmq9UaUIHvPUyoGeKNoz0UY8n8PQan254qdpsxJTn14qEvqxXGSXw9Pg3tAJzQv
	 ew/sjE5O+fYpMfVVrdYq3A7Vn0z4KGxeTCnMxD4ax+64ZctA1KU3wRj1rOrYP5dyC8
	 1p6LsjdKXAziVQdlMahvyeFN8sJCURF2uCDyM5u8hdlV8UnFdcOPiqgVB2YVD8EJUP
	 v5+6pSeTby8vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D1A106FD91
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338549358.27084.45024976963081853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee63dbcd3a3b020b5d8e6733693772503ce043bc4754eb8b427022cd4134adc7
Date: Fri, 13 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773385493
