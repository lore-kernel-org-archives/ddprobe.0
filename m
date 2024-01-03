Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1EE1D526
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fl6k3NBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 932B5C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704311896;
	bh=8yX0L154ZPUgE1EJWv1028w4unipg2BHqnjtL6LF/k0=;
	h=To:Subject:From:Date:From;
	b=fl6k3NBSqdsacGJHHhFvkNmEEBuqKbmyGI1DJPXn/thU/KNzX1WM8wOVSDreFm/02
	 /0O8oLWmtPa335f0Kg9061jbHL62vZqTD3wK6MuElBV13eMFbL39k8arxUCg/jqYqs
	 r5S7x2ojonjwf1hY66AuvIRvTrLOH1+dsFrjQeFoXNsiOu58RAbZkv05qSAgjZe2Oo
	 Bmfe2Ki5/6FIYG7I2s74gQnFxdl0WWaX8gwXarVPIs8exeNC1xUitJq55msXzFVtP6
	 5su9fUO1Ab/GTccq9ZeX7SKdsIzJ3Ke+tBla9CUnhFNmQz8X2IxkSeG3o2mPzsWp21
	 +0LJqlJdFIH9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73D81C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170431189646.16139.6629481894272447820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45e07f62fb5d367fb6b7ecc7480c5d10628052c50cfb7cb2d63262f4d5b003f
Date: Wed, 03 Jan 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704311896
