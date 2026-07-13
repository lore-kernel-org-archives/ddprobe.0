Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160123F58D9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783946914; cv=none; b=e+JnUElZJcyTyMiadkKtEi0OOnMqxXnyKNoZ/tjy/mt+edm1Ic45o5uMxLZS4s0tPDjSLRUnXf7LQYyeLsweMKwzlWcm4h+xF6gPADOQS1/mSsvbwpuyZPJR1+zlOX/8GbrpdPFNZbxeVR/f6zQvtl+WvbsALPfE74ZX05TgdlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783946914; c=relaxed/simple;
	bh=wqHqRnrbDbh5uo82TB9CSWlD6aeFmA+qmD/8BHYOcrg=;
	h=To:Subject:From:Message-Id:Date; b=m6GsF+opJX1Nh4Sadifk2z+CcjGWbNt6pRNZ5DQ47O1wLRIPnNi7EdDGGCNVm5oM3sjrnedF0dsLR/pj0gv64iZloFTopSdmMz4+agMij/2FNtuU3bA93qEmgRRRgCpwUlP0GJJReP3d8cJvLVsdIuEvtlX5MZ74PAgnN7QhWaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7vXC1ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7vXC1ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD396C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783946913;
	bh=wqHqRnrbDbh5uo82TB9CSWlD6aeFmA+qmD/8BHYOcrg=;
	h=To:Subject:From:Date:From;
	b=D7vXC1ib+SNTqpHcVA/O3I1ATIIwiJpLQzL2tgBD9Av8RlaD6nHrJe9paLcTl6QFP
	 5Rg1cQfQ3kfsb2LZ4rYyn2bWgUQc50CoqTnMIZfvbGSbQtNqOpU2iFby96+os6G28V
	 DmxRjfED75UAPFikkpAY0sO/r4PpcvSLXUr9jCn7bO9b80tdFK6FSaleuVSIE/yPY8
	 CW5s2swbJ/VKUu8n1xOqjbpW28x9BvT0+JWqU5z7QUTVJK/BSOK6YXKk/M0sdbLm3N
	 PP6TndbCQY23gxritdD9eM4P3rsUJdcBE4Cv/7ld40lYRccLON2Eftdd1BuC3E5ynK
	 cinzvB59k7OWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B3BC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394691368.1173.368853337545254781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23a4d1fecf77e00123335526f4afecf1b69359160a897598d6bfe4c98c4d3bb
Date: Mon, 13 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783946913
