Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E6018C928
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753899594; cv=none; b=UpAgrx4ZFyTk+MzEgMl8x8KN+H0uUjjeTK5/e9XLqu38o+4YyVqUlJULfsZpxjdfX5f4VKNCdxhcMJLrMS7xIgGOfG7O0xPdetveYfB3BMhNfWLbKSDjNIPvclKqFO8f3SCGtFdmo5hmzJLwKLQSDQU1JV1squFl0c6TwLU+ytM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753899594; c=relaxed/simple;
	bh=GtIaT9GLZguYOBoqomT0XVkTQQTqPwVsbtVZr1qP/KQ=;
	h=To:Subject:From:Message-Id:Date; b=nPuwicmzKm4v1NmAl7T0AJPD+zUs/HVYP/qdkiBqyJc3Of1a6k9pr3fz5xgp3228z/VabU9DwbU6MWRaM3Wr5cWF82GlYVdYk1pXfoJa1C8ce+nVJj856c+cncWoz1AGdyXEUpX5SXtOq/fLKZync3fIuAWeTqjp4IQUlTVPmSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+l5X6E7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+l5X6E7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0224C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753899593;
	bh=GtIaT9GLZguYOBoqomT0XVkTQQTqPwVsbtVZr1qP/KQ=;
	h=To:Subject:From:Date:From;
	b=Q+l5X6E7NvKrUncbkP6qksMT9Z/7ownX3HioiaYSxDeZ2JMP11XakDwvKdLwlFED4
	 y5qMnRNjTBjzmGRtjp4zsjJjh0e5hOmA4kxA2mTmF+n9KYOBjf7d+aN3aBEAF5ZI8c
	 Uo/NevgJElOAvx9R7d610sv0yc+G0lik+wmrxNZ2aCCl3cHjVSa3uGKht7fYqx6d3y
	 ui9cvvf4PNEy+hDPEEhO+ZbCfvV50ML+Q7G6b1zfhdbzH5o+ensgdnZJqDu41dh1/p
	 lQ2I9iDxmnd7tHb5GOCIHboARnN/ckorox/jE/sHJ/SOk7wpJ2slTPyKC64jaSQipo
	 oU9vRFSAb9hgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90168C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389959358.14747.1739311683161344344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d136472eaa8ff095362812813678dfac8ea9f4bc249d60a57f57bf045cca651
Date: Wed, 30 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753899593
