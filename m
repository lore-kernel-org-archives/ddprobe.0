Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA4B25B2FA
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776531454; cv=none; b=CMjqKsC6RRpUiP+RYUv72LSjW7Ha/uUkzH8LLKL/Oh7I79j3BljvaQhKrj/BiYRn3J0n4NYbaBFdPSJakjll6SLPB/vb9WF7v1Z4fU4NNPCNGL1Uf4L4QCPvh2kA+RtKtkuLKYTXvn8XiPgmBP6p9S1W3gEiB4vKVRw3KFoRvBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776531454; c=relaxed/simple;
	bh=ii1e/q8QXxcYmaESWpoXcP10yIrAWiGr98/WkpZGhgA=;
	h=To:Subject:From:Message-Id:Date; b=J6h3Y/kVo1nn2hB+zcIcI5Mm2Fa8xK26EKQQuKh8uc5BF9vo8zHPH9qKQTJGtMdmy9cj+/P6SvF9adL55kQy/623vFbDRQaja+mh2EVjlgz7aHuE7u1FDlMt52ddRt0w9buSjaiw5zqprPST6S2QaXgb1tT5LBoAOwghGB+YUw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fg6K444+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fg6K444+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD302C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776531453;
	bh=ii1e/q8QXxcYmaESWpoXcP10yIrAWiGr98/WkpZGhgA=;
	h=To:Subject:From:Date:From;
	b=Fg6K444+djlt7ZsJogYIx1rcdnt0jz4lLmtnsw3rQRzN6Yp85nECxnBl7Pb1LTd5o
	 28Nlu2h7cTCCfXzJtPR3WxfTzbNP6HTqEpLT5f2mdyLTo8m2QuXQxk8znnI4hYhBzI
	 ZMm0yyos/bF9QcEkoTjJrA+lBljuijvJTThqeAHnbHkayJ2ObYXNX5UNY5QGTzhzK9
	 Upk1BDMZ1DZ/c/3rDQ63IHOEocDp46n+svbw1+slYk/z5hV4XCmO8d07LtlW9gX69e
	 Vr29dSLHCfza9up7tFQ7Miqy+8xre5mqXtpa9EBqbqeyXErZczoXjvDYJJ+jNId1k3
	 9QPLKbX9IKZWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A975FF99C88
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653145368.28877.3772985901327856871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f66c9ee318a9ac03c4ff462c32f7acc2bb97e4017c1c37dc1e5270872bd689f
Date: Sat, 18 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776531453
