Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C500318FDDE
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773253493; cv=none; b=uiyyNVmx/ADgrlqOoH9cJYVGpItiByu7Bu6t5UhPXEfGhzZYCALlNSCL1kla6R/sR6Z2EbXnjX3oubZqBczu1GfGIqA/nM9Z0u6CjJ9hHZBek8iG2OwXh9FW6Wcy6vX4VIzUZWFmXEGVjs4GdWGKSG9IDltqX/Wx8kVaQZdVfzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773253493; c=relaxed/simple;
	bh=8Ui8Y4hIC38q3AxhLpZzl512KgMIIreXTv4BajY7TTA=;
	h=To:Subject:From:Message-Id:Date; b=oEwXq0QhLY3lbY6dl+pgAffuw4V0dpwQTfeHV92hNyJefRrYyjC0PmO/XgjCEAbVHIgdiir7EWQnN8cROGDBHhIHXxyji1SaC2f5rMC1i8CLNuS/ti/lpG7abV0d4w+pT4goW0Bba7yomPzN9yNwogwrgPD2Zzj06rgf8eM9Xg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDU3jzmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDU3jzmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A862BC2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773253493;
	bh=8Ui8Y4hIC38q3AxhLpZzl512KgMIIreXTv4BajY7TTA=;
	h=To:Subject:From:Date:From;
	b=hDU3jzmdvsUI6tJ+qgF4EiDWgkXXlLGiV1VlY3DJGnYfmj8t/BGBuw/nYqdxf3uhy
	 Y+pyxZHBGXWY3QJctxEEMPRvSNAmS69cELIuC3dwE7RQNsStsf5z8kWp4V5Vq9VLFr
	 lHk3yEF9uEzJxBkP9dAanUzhqppxlQnDnlgr5jppREfTmUXYuk8JgXdwaP5EyWyNKh
	 N8T8mPZInJqvTWpR0QdtS2q+Ufm59zSbTQGCOrxIecqFmY0lI7++INT2Bth3h/7QnL
	 Pm4+5yf5Zt+wYHAYLcdDPv4LnWZIyLskL32S00Ja9bD9/CU9Is/eMgcIk8bj1/b10L
	 uas+3VV/iZPhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1B61125865
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325349360.29127.9935434679845945106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbaa6e7e506decb8533d9524dcc4b85e943710821549577fc99698604462d1a9
Date: Wed, 11 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773253493
