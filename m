Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DAAF25A659
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769964834; cv=none; b=bVqV1WJRDx9Ef9cAiaAiS3S35LCZMWFxt5gUIAc1ImxGLseRqpQVk0/CQwQnDjfrm9zA6Ldlrx6BJxLSxfUDVxbHVg4O9ewiGIHNcudgMxcGjPme0l25k3mMwJQAl6mMMvn3tmIto6TIPOT6XHhcfHI9raJgZo03dRY9rsMbzXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769964834; c=relaxed/simple;
	bh=3VHqby1lv3X5735WuONwh6uplbbjbpuLu6eou/rBT0g=;
	h=To:Subject:From:Message-Id:Date; b=ARMOp9v4HkLo+z82Shd2lHmk+EId8HSrLyCg2uEH5HJDToiRZQrFZXxvrXcqmNmkJnZiTdYd6ZeJIJbwQ+Y3g4F45y459vB2olTpS66t1qay0arweKIbHZi2z9LDjT4z+tBqBtYTU8ZqFKwMoqcjbH/pkM2tzYJSCNLnnMW2PNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWyGO2cN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWyGO2cN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12A63C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769964834;
	bh=3VHqby1lv3X5735WuONwh6uplbbjbpuLu6eou/rBT0g=;
	h=To:Subject:From:Date:From;
	b=KWyGO2cN2RM8zDiHRb+QVWaotJedVsKSFqjgkJ33E+zuvd4S45P5xvMBd6NlFMeTE
	 y/8CiUQy2/oKQX0Z6szoLX34bHur1GaZ0hphi4pRmQNpUsVmyQRRFIEsMN/G3OHOPv
	 lcooPjXkIgfqHKmSaCktMbMNEyMXVbiMK/u7ztTxj3xNW4/yrdpjqJLLPcpIuw44kL
	 vupc4j2YlDPL2e2ugF6uXj8g4KZ7i7M23Ck8mtvJpM8+P2wg0YcBCRQanPTfHMXxas
	 6+wpodH+7PCNAECtoohduC9qmLVxHHxuo63jDXe+uHlKx4b0HlEbyLQPSb7wLB4MNq
	 uPG6ts0pYvDRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2BBFE65296
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996483382.19810.9794544468068291958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff43cbf8650077ee48de085a259a95d544e02f12319bf90d064ea384d741f8e5
Date: Sun, 01 Feb 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769964833
