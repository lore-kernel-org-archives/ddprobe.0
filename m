Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4CA7F
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716271943; cv=none; b=kF67lAJQBGqW51waFFhmEFDjrhcIm0q0jF8wZEQPIKmkwANP3Uh/B2AyPlFZB+Fbrt3Dqx3lc1VxN3nbtmzNSHgBqMJXDjnkBHI8AeS64xO2w2vIAFcSTtk4VrJYkZ8poZnUpqyQw6+0jdK0gB/h9ouFFV9c+5H/l/eLFbG0J1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716271943; c=relaxed/simple;
	bh=O7Xkggxlbw3ryeIz64D3PkCT0Gkt741ZZozVw2He3sc=;
	h=To:Subject:From:Message-Id:Date; b=PG2mNMBTZqx0qvyIEeib6TC9rSU0m9MlN0HLb+E09j39jhMdGenGTb0kbORNvhbjqpFoNKzYgFHIDAeah++OA0elioPmQ0HcKYSdoILWpfnBYrXD0fQaLj2CoTyngcOOqXIkTyC4VrCUy22xtyqb491jpdnWBnyip1Kj8B59bAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNVpWn/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNVpWn/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB34FC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716271942;
	bh=O7Xkggxlbw3ryeIz64D3PkCT0Gkt741ZZozVw2He3sc=;
	h=To:Subject:From:Date:From;
	b=bNVpWn/eZWzjfSN2/jyUQRR/S1mM7FCPoUjd1M36LBlW/K2lOwQp21Sg6lAXYLyfJ
	 xmubhaj0aJND07LuHUqOQL44Ftz7WVpyg/lZWjbbQfK/GJ41zPaUQ58lI9WbJZ/fpU
	 3wD6UkS0fYx6eORG8+MgnNU8d77PgqhXpotyXgZNNpnuBuffJEDk1Q9WDwFvs/mbFl
	 KY0XSp12nqc5rh1XSUpVZR7FKOPnR7av525V2hkZv9Vt2BYR0XW4DIA6b2Ygjr1ML+
	 Y5IpQFitDUBkE/o3NAZjVpkZcLlFsMegrZnrtItgOdQYQk2+n6mfJ/glKFByyCfM5M
	 +rr9i8Vue+ERw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45D5C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171627194279.26291.559851420908933508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3594d52e3822563a77c763956bdefeb25ef11d748a93e83e0415c8dffcc67302
Date: Tue, 21 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716271942
