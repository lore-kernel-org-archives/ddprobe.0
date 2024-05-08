Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D6512BF23
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 19:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715197943; cv=none; b=Ex+Ugulyr2S3RUqvwqiDVLPeFbQtJ8OXVvnxs5wmw7pnpi1DUh9xh2v719mYDJpoYs6jvNCrcQATcfu1YETSPdh6SWepVpXFh+vcTxltdit5FAGNsZIeuaoiMN0yaVcdEWVjtDlGOuZkzSMd9FnEYLGsc8li8ZBULVsyKUKm0HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715197943; c=relaxed/simple;
	bh=UqRO6rc4UpwOLCjzY5zBwAHWfJmNTm9XEh9lIQR55z0=;
	h=To:Subject:From:Message-Id:Date; b=tKzoWWW2BfvOTK0Qy4ym1akPGwucdtfJE0L4Vyanm8A5qgu4smyGJ3WS0YedrZpTsu1JKH27+gr38oSAIXb35st6KpmAoDubsvXOUmMGxherka2Aj5DW0ugjjyEBn639rLqPWjWmAW0HgNQksZpfn4PkBetTDMWlvVBWa3EqQU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9qb+q9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9qb+q9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF829C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715197942;
	bh=UqRO6rc4UpwOLCjzY5zBwAHWfJmNTm9XEh9lIQR55z0=;
	h=To:Subject:From:Date:From;
	b=E9qb+q9etTdjZN278bUSKfJmZAhZiOB7OmZ9o7+yQS6uJ5lDLlPGIdC3835dcLM5K
	 bzr1uXNnFgpz3FMQ8OPuv2Vy/s9A0dxB9HT449pSAkgv7yCQorDUQQ1POHGschOs9a
	 QPBayVsWcyH1DGs/FBBCslrLNS4Myw6FfVjZlJI5z+kOQXFM3xmsKpsq68sSRCXZTD
	 hmjErPRlfJe6vTbqcAxUtFk5nwTLzljECqP+Ew8CyzicdV0C+aFuOPF+fp7itxH2VY
	 kiHvMiTLAjQO/ewKOLGSIpsetFF6AGJ6PStJfQX4RrsCyMlsSzdsixYF5tLiTCZ8bK
	 +6ym1Y1JQdj9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAA9C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171519794276.22954.1663483074314036909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1232b57edf85602c926c70a9a606154df699273ed80b7af937f54b9691f9bc0
Date: Wed, 08 May 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715197942
