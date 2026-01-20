Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AD73168F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768878834; cv=none; b=WEGZhM1404aI0s8RgZoRZVDRfTYDXmNza0tVBxr0AInqEDTYSgOrNnR6Nmd6M3Es9q/BYR1I7BvDfbfvQXGP2i9WQ/qTb4nhNnQeSGwDtnCHr48QrLEgpHzGxbIIi4Pkc+yuuIWvzqRLgy5Xe1cNRcguZiNxiNbHnfK5GQJs1oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768878834; c=relaxed/simple;
	bh=5fkT03/7aQgFGDCQyVrID5YWpOhyHiJASkuRD4fK8r8=;
	h=To:Subject:From:Message-Id:Date; b=MPtBVVURXldOre2lS8xmanq77Hfr3lPmFAbygsImFSCiKn5bLLfowZqAbotyTg4eLvYVpc1SNetA5Cbv1vwwJ2SU4UlsAF7vtpFmCZlIF6tMWSjJCb2yeOQ1KpkGARkaE/fLFdP7i5rqO5miZ74D74/80WfurIkfUT7ah7hKSuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHbzulPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHbzulPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8EBC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768878833;
	bh=5fkT03/7aQgFGDCQyVrID5YWpOhyHiJASkuRD4fK8r8=;
	h=To:Subject:From:Date:From;
	b=IHbzulPDl2nI+Hmx6VDNXiz6Xja3O5/59i1M3nGR+pGtTSFOQIXv1NwKyxBqL1925
	 +xO6CDgjiM2oWfJSrPNENtdEvduCKe5T+h79kG892hLTZZv3Dwt7BDxjqVNCv1ztld
	 Q1vy0192+pBLWeOEczhPmuQFoZREk6ZyTzgcgzqcmJwxjeFFNV8T+QfGK9+vsbNS24
	 5cjdCS6/6F5ixfPo6KS1Sk1sS5CoDEPHgjg/hAn1z+b4eR0JLaQ4qaSRV+WzLFszq3
	 a/2SOhHGESqmn01C5vGpZoNA4AewpPobwA2D4+A8Vurs2lqf7xwCJSDc2/y49NwhMa
	 bAtcss/Z/ZeRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91066D2ED0C
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887883358.14124.12156476667156978321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676873f4ecdf80998397930df165d762ea5815993fece3dc2fd8a57881ebb1da
Date: Tue, 20 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768878833
