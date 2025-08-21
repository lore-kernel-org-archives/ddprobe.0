Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E922E4274
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755797394; cv=none; b=H7mxM1ckskKQ/lbvMbFbwD9iUKdypZy1Ph0N3OyTvsmnsP6t0qNRc66+GAtRI8pOg5iaJV7bFO1OZt5LUEX5PbctMaNYajbw3asRAzf1PXqsBiN4SJBjMMal5G4ofH/JACixgtpLPf0I/21hwN7etB4KnRFnq8kp0Kk/ol5L9tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755797394; c=relaxed/simple;
	bh=Cy7D4Lfd+5tIUyXF6hiM4F9447nm0U9PVRNkwuKfpH0=;
	h=To:Subject:From:Message-Id:Date; b=ZtS0A3XHnX2h1mRKLJHF26mLGgAX1lfHhImEyHQ7bnHlf2HFl3MjImU29DTK9BMw60jA8vj2hM/nFLG3AnlBsDwIIp2cWN+JOVAkTP13nMt9xRvCC2BbB0ofPvK1s83ar9hvt22lJGOe8bgmlBStmAw58BGThdo5N6sX4G9yh5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfkJFJQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfkJFJQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA3EC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755797393;
	bh=Cy7D4Lfd+5tIUyXF6hiM4F9447nm0U9PVRNkwuKfpH0=;
	h=To:Subject:From:Date:From;
	b=IfkJFJQCKLrcwUlvvLjjnRhO/9+/9ENLum96iWGGrBdN9BYv3PWOFSWfgvt2pd9CJ
	 7hAl8bsOuq9w4+DoT+LMXvyhW6iv7Br2sm/sCQ8Mt8/d3NuOHzbiFfjFc98wY4UkQb
	 MqYps0sxB4ZvgZP4+P4IRMTF8eQRDdroChaOyZeMMU9Kt5qydreyDEr17R2t5hyyc8
	 i/QmxZVl05QaKDZ1AJcZJkM/jZXUBLfL0jXi+i9Aaq4HD3PR6r+hlOeY/tD2ewhAvT
	 2Ox9pgNzZlLxokOIx2NZhlMBS4LuRnRkRB1gF3ypIfZ4juLaFWq16X2SaBL2skkHim
	 uvDT4x6AcT+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDABCA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579739357.14150.9004461467714270695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890be199979399a0426529a08f268df50308d3b77de2cfae39278886e46c00a2
Date: Thu, 21 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755797393
