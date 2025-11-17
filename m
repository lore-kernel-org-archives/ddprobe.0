Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771173218B2
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763415714; cv=none; b=gbfVhppsVtWUPFxm4DzFcE/MsZS3snZWb3hjYvKoZcseWsuQWRTLDhljmDe4vFjIOBpCbSaDOCw1ui2Nl+vB3nfJVZwTlNcrLKDgGV1AqjP0G2Gi/xSwPm7xv7L0nd6vd9L7getTkAyfKVW0lpvHwRlVudGKfMgb5g2C75hJ7ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763415714; c=relaxed/simple;
	bh=KwzxBFVHfcU/0xkubutPv1HaS3PncUOwr7VUH/DvGrM=;
	h=To:Subject:From:Message-Id:Date; b=b1yds0phXZNcjaDtzOo7jvMbJXszB+GMUCn1U0MZd+mZt9WPptRyMLrsCpegVzrsh3gWoHEV5tNgylWXv/J5RC5fg5CHjzsMlZk2rKI0Z6dRjf4zw0gD7p5rilReZv5eS1EzeSQjbVhigi7OFFkgj1p+oq3FF4HBYQIIyqCE4B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4pBetgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4pBetgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9271C2BCB2
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763415713;
	bh=KwzxBFVHfcU/0xkubutPv1HaS3PncUOwr7VUH/DvGrM=;
	h=To:Subject:From:Date:From;
	b=o4pBetgEJm35WdHcYqkxxxCn+XeVz/Ml0xmlaFD4SsQ/SBeMT0haj3KAsch+/eYO7
	 E+NeM5Gqn0KMGLea81cEDQWTPHsEIVXt8A7RSRBXvyWcd1olBMOFXFz13Nao17WygE
	 S/pupy4VdmkykcGLyOCh0xPANSmvrwc28WwJoBOy7GaexJxpQRSwaZVQEi2DJPJYuq
	 tWGzETvjAX2fqlEdqy/eiD735xXL5XUGdQpuRExX+A4FL+HhB7XfynAJTHWN1oRPiI
	 VsTK4LWazW/eJuWB5xGKRVeGIo9IUN4OINAERrbz1KSXWTL1peavEHzU4v4PGyT6NE
	 i1sZQ7mTZ8E2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3BCE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341571358.14298.14295783165005230728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dcce470297dc3d088f2236be04ee66014078175199c931669d0a5e0e2b17dcf
Date: Mon, 17 Nov 2025 21:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763415713
