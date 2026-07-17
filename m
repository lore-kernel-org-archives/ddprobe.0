Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477423A963C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784267914; cv=none; b=cHzlCjbMYS55vKFFqMdsVEXMGnwPOXkBACyTR8nl5sW0fy+DcbPl3xbQv7DuxhHeKZ1Dv48UYtW/ZoEaDiZtFqegzSkO8IAMSJ1+3b2oSSD61cozilswvukL7/K1MmyFh8J+sD8wlDWGkj7PTZO5GlVJMh0Fp+pJm+4d1sNzZZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784267914; c=relaxed/simple;
	bh=zWZFBQmC1gPBXPgjvxWP+CAJMY6JV6TRQEZzV2VWKsg=;
	h=To:Subject:From:Message-Id:Date; b=djsyLIaDpNo7RjsRzI5e81lPQgyoxIZBl3pVywwnb6wATwSinSnErKmNE9hRpcSD4Usi4N2suZvb37NPGrDTEh/of3Fx2Gy0oKK2mictC4BeITmjYBx5MGsuV06tuO9eTZBVhZIbUl0SDD3a2ETU5+04jrhb7+p4aMLS/VnT5dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwRQ/8ZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwRQ/8ZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF98BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784267913;
	bh=zWZFBQmC1gPBXPgjvxWP+CAJMY6JV6TRQEZzV2VWKsg=;
	h=To:Subject:From:Date:From;
	b=ZwRQ/8ZVcPQk6GLcqSRzuR1Cpk3gZ/5SkEio44d3eZzr8fTVOBUR1O5d+lrUK26Qn
	 89Li4UhkHhYRw3LEL8MIk9q1QGMFnXn+aO2fPD/kGeQsIk/B7zJGxTCLmb56o1zLcY
	 wTH8i4K5ulMe//2y3mos2SDOR5xaDivTiQgLpdYacBEpFvUJHiZeNMCXs4kymVFKGV
	 hjIYqGehRCqBZ5ToH1gCjyhIBCW5sKPZyr70BwUZjIXyuNwI4lX3B0e+hkxujFDGqv
	 90pqzhE1jkY/KrWg8oot5tCRtsS+WrBBxfZN7+yWiDgQVnQZqqYvTD0UzpDlSbteh9
	 5tVCUuqpg+d7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD929C4450F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426791368.6547.5922537058196244052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8895bb97882340f3337aef161825f42d5acd508a34e3293a9d2f74e1befde313
Date: Fri, 17 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784267913
