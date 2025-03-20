Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4312D1B4138
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742450394; cv=none; b=oLkSzIzRslqiJpnjHfgafMPaXENM4kSoF96hTVrkjQs0PYErKyVXlbQ0KmNbndZmg8Pqcfj6022Uh6gpQXCqCQBlSbeGJjBGqXAwnUQrSaU5ajhgCx4AefpgYB3yU1Xh3MIMdRw7e8XUiLvqiWe4KYGONLANRF/B3Zx8N7bfBKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742450394; c=relaxed/simple;
	bh=P6vjddEmw3auuHSfZTSlGbl3djnIlGSUK1y76FoSX5s=;
	h=To:Subject:From:Message-Id:Date; b=Pd0FPjcbw5SXWqD3VD3FwW6Q5vh2S5zhhwFsyONOU6RZnfHoioxaLmidsmok/ERJjrWK87MglOY9mMMBL6t+S7AOQjQpvzuq8f5g2epXm7lTRRiKAQFpK6XfpPmkC+VXCboQod1IkC8iCyeEGXaWGjMVylDUnpHKdQbO/Xr4itU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXSP0t3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXSP0t3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9AAC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742450393;
	bh=P6vjddEmw3auuHSfZTSlGbl3djnIlGSUK1y76FoSX5s=;
	h=To:Subject:From:Date:From;
	b=LXSP0t3Irlrii1w/egBwubltL3RI2BU9JzHAurJWYUj2IqsIzdSJr1H7FzhB7kFZq
	 Sqd3BGHSOmPKwYGA4OJZ3twQf/+HxsG5Y0JNtqGR7zKm/FOMgDYvK3xq3fsj479ecH
	 9hiBJbqNhheHuOtyS7YU9ZH2cs2nGZtF6azNqQjta/fxQRqlSNFDKUnjC5tpUyODqb
	 xANbu8t5b+0AvFk+JO+JIsdkpF8Yk9+KlDnQ28obOzeByPEWck0IaFnguyWUllG6qi
	 pTjDWE8HQLR5eEuR57vQzp4hp+GUcZoz3l8/Dbrk5BzbMCnxPAXn8FQ8x/7ObxyicT
	 Ys5seHytAR7/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9623AC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174245039360.18854.8040659527298600265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ddb29d38db06630f66d2e69889b785c17b0aa4869dbbe89472dc1d642a2e8d8
Date: Thu, 20 Mar 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742450393
