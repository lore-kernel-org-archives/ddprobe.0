Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351C51C27
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758712795; cv=none; b=LhWr9cv+uPoofswrBlJpfrDqbeH9f57N/z6OViPtDMnBdVOTg07WavpYXTH07KSNkuD+4PtRefpFm6F28pay/ZFqTaJTAV+71TmtxSL/rn9oPmYSqKiXVxnl0GzEI5TJFbHW+pp37CWuW8yxqw8YroA1fE8bMx8B4HX7BhJJ9d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758712795; c=relaxed/simple;
	bh=xhCPFMcq46a4sXnr0rQmZAbss3fLJd2oXm60h/U+KRU=;
	h=To:Subject:From:Message-Id:Date; b=NYS0pCQV23z/neuJJEf85/kTTe+2d0bbAg2dcIESA1kvRSqMwdhyThXR5h7Qo2sQObRls2XsVDDduyf+iKMURGNAgNqV4CrPtWmFtX5E43dXQ39gySFgV2zcJhblX5K5IH/sbNQKQDZVTxO8IVVYPbqwSxc2y0fXFJk7nfnq7oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0u8ChQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0u8ChQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ABCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758712793;
	bh=xhCPFMcq46a4sXnr0rQmZAbss3fLJd2oXm60h/U+KRU=;
	h=To:Subject:From:Date:From;
	b=i0u8ChQ2I2+hP1cwcAeFhdoADxi4v+wE8t+YKOHuSfKSTiERxkPRIKEPEq4fcTt6M
	 HK1jAxlb4h0goDlLOQCbMU0cu6icHVaTpae2YbK5aDRQn6RpypgcftfghCcUGzQW99
	 Q6D0y3MaAo9VQj/Oue9Kt/tKLKOBGcWlHwJCwu2zGu8/0A0Nq/KonRF8r3fHrg+a65
	 5mP7Z1qVaub/2SMlEkwqgU9wRKR7hCwant4i72E7ZB+P3sIT6ycY5GxWuNhgp5DQLH
	 rrWSDA70vJZ62sijPDpZMT9S5MbSYhkpkQO0noWfSqqiU0F2ePIw/SxtjRHNL/UpUd
	 Xb8c7S71o4w/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91596CAC5B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871279358.20198.775296463567334685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9632061dec10bd056ede124fff8e5a958646f43051a8b60f46b101239aaa4fe
Date: Wed, 24 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758712793
