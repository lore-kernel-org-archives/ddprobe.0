Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20691A3F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717950443; cv=none; b=HkPlCY7shys8lZMICchAMtrGFvBd/Mm9/RNG3B5TOkKM4L/AA0AH5eNbdDmA/qRH1nG2UrZfV6mOVfco8rCokPGjq4etx9xBUBCr5uYwTuBEXq9tNLbdXNnXwKtSXyMcPsnoN9d+gWbAJSWe6ZGIA57AgkAbd0Yw/jxuUxJF0oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717950443; c=relaxed/simple;
	bh=H4NzlK4SpAfOUmfU00CpJ7M96gEzVzzKU86SR6+ENcQ=;
	h=To:Subject:From:Message-Id:Date; b=tjMJif4Vzc3K9W7Tm6liuQfnaAJ3jdMq5wrAUpFKqyUvjJHPGET0qy/glkdfe7iE3NcQS2vgf8T/pEGl+Cw6YZSeKkQb26tMojcJDyOkne5zzOP0WW3Xr4U/us8wY5HSWk6kiNQjOBu1DySE1W/dLwzd78Rq/d4gg/1cuSvxQVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGAbxMA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGAbxMA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4963C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717950442;
	bh=H4NzlK4SpAfOUmfU00CpJ7M96gEzVzzKU86SR6+ENcQ=;
	h=To:Subject:From:Date:From;
	b=RGAbxMA1gSr0yXBEqz5oscVzk7HbWS3tSLew/KLdddXZAENZw1WXDjYPk7R5A8mxp
	 MOSJQYRg/QKd7F2IqQlPsC5sjUP1fVeEBHYF1+380CCprIQSRWKR03Y0hEE7gaNqo3
	 lUkHwWl3nrMNZXrslubwbMk+i98f43btamxAx/kKa6KxiQq6siAV4sau+9DS49rA1u
	 vm2Yt1onLsuC0k3+jy9f46BujsO4N9q1HGMKAMZHZ13R3nkZN+aRrC8yx1gIZSb25C
	 LHWdAL8MCa4m6GaXHc/vQPHINKJ/XwbHaGdZIHJyGIpKCBAjFizNKqJfiBKpGdFHpC
	 5sFESd/236FWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1238C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795044275.31702.9530868048408105617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e595dc89f027b427ccc26769783423abc9c2e66280a2ee6ace62483078a6379
Date: Sun, 09 Jun 2024 16:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717950442
