Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3178C3ED5BE
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779720154; cv=none; b=QmO80oFT5ZVt7tN/8RVQ2BpUP0NWhydkLt03x4hczCmkPToS/2HBGrOnair3UHfEg9AfV41sMmciYyr0G5Pwy2tSViER+MYjm3eOvX/NloC7O2+p+tddX6wj3uL0Oh0J8nSp4CORa0sM5wwZXmqDweuyjNgpvNYAFLcPXmqQzrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779720154; c=relaxed/simple;
	bh=+S98rkr0DAuKSFpkugwt3tO0LRx683XSJXIlbpKWVus=;
	h=To:Subject:From:Message-Id:Date; b=fC5Pm6rwrv/cBKGvVENnPg84ejyQOUx1E/i2srmkDkGZo+syGp0Gva0VhvvwuQyMFsuKRxb5wraqRvjcnJ8z3dTV47BOHOjpNtTWJlHy2Dq2mbYGA0pg3v+s0loT/IIK4vte+wl/57HY3LbFbP3w5+gygCDfDCpQKuLLNc8G5Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=by9MY1e9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="by9MY1e9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24D9C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779720153;
	bh=+S98rkr0DAuKSFpkugwt3tO0LRx683XSJXIlbpKWVus=;
	h=To:Subject:From:Date:From;
	b=by9MY1e9E5xEG/FJVsYXZJQKy+3gS1sKwOg3hMNBcXbeY9MmmquJFRcC5a/hPHKbu
	 a5NaXE0O23/PVlXUIYIji1Mw2+rc9Uf53uIwCZfTrJVwbCDsDUvy3krMTgSaE/o8Bv
	 DHE+JRzFiI42kcpUDpfqB5eKXvAH0k9lV2+CUhNverzqxjK8B0nMW2M/9c9qFQ4jNA
	 p1Kt8pVl3QUDyW2xxQp9TqkEqCi5/M4CRt7hRjroxQ+CShTzVCwyRuKIl93UAcVyQt
	 Qm+3GsJaGQlOsSLLEkqAIzzBCbOz4scDnpuHWv1hMVPiATqsapJ79ySkEaacCnUbx+
	 cspFFHJN4r9Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96ADCD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972015368.457.10487705460410739231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b5edb0d00af36e0238896349580f99f7a47cf05f053ffaf3debb05d511373f
Date: Mon, 25 May 2026 14:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779720153
