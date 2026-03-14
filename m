Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DF11F7569
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773492294; cv=none; b=F/PVTGdmFdxrV+OiWS5cQ7sgbj6MYHirqlc0DNnR+9IohRihSIuOFmDsdZOoA/FaT92uKWSpNmFrCYiV0BQNN9peCnftGK7C6TuaIoIx5mWnXhQoxGPYRkvvGsWtjr4/vKPPW+voL7ZYMWRUNJpR1foXXxc5NvXpASsXLl9r0Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773492294; c=relaxed/simple;
	bh=nqGmCdcrGnLDpEKaTRRqMBDznT1LW7TyO1FtVNyhvig=;
	h=To:Subject:From:Message-Id:Date; b=F8izXMJZnSbcvG3Ppy3l37NA7kPaCGVZfo1Ml+/lmGnQQXtDFcrs7Ritne+KPCYHEx+RSdoNqcw97jv1aecwNRW+OaekgBWBglJ36pd4RsezIL+shSE1SpM7Ia88JqJZoUdXWeCJTwEC/5wfeob5JdmNWsjsaOB66hcYgaV11Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9KNz5ql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9KNz5ql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2303C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773492293;
	bh=nqGmCdcrGnLDpEKaTRRqMBDznT1LW7TyO1FtVNyhvig=;
	h=To:Subject:From:Date:From;
	b=S9KNz5qltAuwQPFrwFG2eIy81aN5sPeVMqixxt6HbmsLOQ0VVQIIxNjrLfHmr1q6e
	 Za+l/ngq1BOmxy/uXpDyyZRopl3wX0pA/bgZvg6bNkcqv8InXmNDX/jzMpp32Lx1uA
	 r1DH2nGIKjv5ZiJqJ2maBmqVQmszPidQbEoV1kLwjWZmUhFkv6MAFNyc+TcI+FEJ1y
	 mR+/EbzXXKJbC+92Lacp1LZ4bknzh+ndMu5HECoUlzDOPwF0LQv/fe8VGQM7maqdWJ
	 WFDJBf6ijd2s7ogFVZwP41MIVabTFpAqX5iNLjyhvu230yzRY2zkDjEKatlettqINJ
	 dkT8e5rguWYQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F87A10706D8
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349229357.18738.16035878184721802408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f641d24a9fdf3c23d6016743906d2717b402dd33a95eb27decc8141c2863da
Date: Sat, 14 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773492293
