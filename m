Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5902A2594
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718019443; cv=none; b=f2r72vJtJaRG+KKkqHL+I9vh+WfjuWm1sqbwWJbHJdMD+NZ/Nb0jCBe/dfpgwdgaWIMxkzLINu2M3OuiIzHp0em0QD6R0H+3t/ODtLmHm6YGv4bAcBQuPbFw/y8tVBYdkJcDGEjMDNTLWYj4X7IVo8WdRXMsN6OMaoaXzJXfOBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718019443; c=relaxed/simple;
	bh=8vhzrYajsF8soisOHvVXnOGMDnpCm2uERcnVWUpNBJE=;
	h=To:Subject:From:Message-Id:Date; b=BlQ9qyIGu2Nre2LEzi+vBxIqEWkRcDrg+jhDVS1GugnC3eFGISQUXSDihWCbNWfMODvnIRej24zYHYoudeRHbimZWRYLiM6PDcB1xhwyb5RjEzHEj6qRVtlBN1l3qbeLJyTyrRMgGzeVJCsJEO8/+3lnmtJiaMRkku9Ke9Xb5rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+eZ1xQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+eZ1xQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CC4C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718019442;
	bh=8vhzrYajsF8soisOHvVXnOGMDnpCm2uERcnVWUpNBJE=;
	h=To:Subject:From:Date:From;
	b=T+eZ1xQACTjHeeYBHkGoirCwhA25ZqPCaH96AQGRTGRe6dOq7p3c3RBBbsm92yUW7
	 riEN7U22HV99eMd8FCbME/5GHai9jLycOcSArEtv1vLXe1M6PxhYfT5NlfoHDmypN3
	 wNltP3ldGcgB+S2p9t2OCSxIuEJehYi5rUDvOJqeZUIho35W7p9Iw9Hum1ZOBwk/qr
	 tavTloR/MInggmE1dyP00K1Wntn+lXSUf7pBO1JJCQhoNUlLUaPuiG1KUfn9I1ewaP
	 qmA0Se+LW1Pgr9b23sfXvI8o5jIBIRGXnHFHTIZbNc7RL+vLhybr/Em2y5gOPgHs4o
	 PUV/RwIV4jIXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FCCC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801944279.5651.17685400453313486658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac7084733584de3668b08d96657eb5d23804d047d3ee3a338d852de70bd09b2
Date: Mon, 10 Jun 2024 11:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718019442
