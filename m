Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8106925EFB3
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 23:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739228754; cv=none; b=d/MX4zITupMteeBK8bviMT91C0s6G0GmJaFY6lzWPjw6s32wY+y3aKhPoODUN2u9fLFulNW12o5UY3SZVNTdvoCoUBzCY+1I2/Ho7bLqDdkc5/Yq1C5A416FbyDGlMT1U60sVkn9/uv7l/RAJ+Uuzp0v02MYaA3gbYWh3jDiLbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739228754; c=relaxed/simple;
	bh=eIHDXqGe1Gm4r7RcVz7EQtir5gayI4H4S9h9eqTMIxA=;
	h=To:Subject:From:Message-Id:Date; b=rtdpHnvOiX6kj35gB34KFvX2sM81hBeQ3pgxOAkqrZh6tqmm1Nt+6LXdMa3QPgNmkJRBdnwskjleL7W7OviJQMQoFkC/xfXbozpxMXpRUxs5YEEMYblD5jhhr9Nw98eTW4bOMadbY2CkGYRlRUv6E33/QZMz9tuRX/HAwaSdzHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQXGk4pJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQXGk4pJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BB3C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739228753;
	bh=eIHDXqGe1Gm4r7RcVz7EQtir5gayI4H4S9h9eqTMIxA=;
	h=To:Subject:From:Date:From;
	b=rQXGk4pJQXFQLiu7UgaXOVdy5JtjrCwp5pZeFFhAnXTwU7uvZT5Y9LrWzdAU1rcEC
	 qtrZIZy7/MT9jfQH4haAcLbHSmhFQt91g3t5+JyjurkPmY+qH+JgnXaIajzo+BjNt3
	 ZvUEP7Lm0uUZQ0SDG7450Ds0+H1SwnmPvH7lRG2w+Y5wel+XMR15RJYuifTH6igYcJ
	 HgWrrKSQIhsXPQbv2YPeoy+aFNMZfLYCZnnX2hr6gB2mMOk1E+X2dl1wfdAO5mhsU/
	 coFTl/llegcnQodckxRPtatxFMw+IP9d1Uifg8mE4LkzJsndyOq3SYyorbOTFwQaX6
	 ZU/B1cjTD0YEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE45C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173922875368.11692.1309808982335119004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f006e7cd0341c183abf5edb9062485434f80dd07e8be21177b695a929da65971
Date: Mon, 10 Feb 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739228753
