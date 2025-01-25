Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320091ADC94
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737791754; cv=none; b=SF4dB4B4uIv/tm09oWqMRSxuFETByfRLbiOjYEVXzD0oCpRq1Apgqn7jNzZoymloykzHi+jDYAy7Y7UWTnm2fdxl8Rq+1gzkDbNSxBhM7mBeUl6V+lAIqEAiZcPViEAx2jed5OA6m5VUZ46nyHal4pAfhw2E7mswf05j1+nln9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737791754; c=relaxed/simple;
	bh=UDCiGu2JUApGH7B2nyIVNEpULwCVKqjyYqUS331LgAo=;
	h=To:Subject:From:Message-Id:Date; b=BaYyyt6bO9xbdjxSNOXMK8Pb7/Jkx6b33nglDXLRcW7bzQ9jFtmlCOiyGFazWuZSc/eoGvg1ffpapv+HOPyOfzczo4Bi8m7thlXEZC+Lu9Ae3A1BK8hGLLH1Z5d7xgHLUlBPjiIaP0xmr16WM8WE7HiqxMHfOmH/fluWWV1AGDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhbCEhU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhbCEhU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC60FC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737791753;
	bh=UDCiGu2JUApGH7B2nyIVNEpULwCVKqjyYqUS331LgAo=;
	h=To:Subject:From:Date:From;
	b=IhbCEhU2W0A9C0bREu01pdWdTm+teCh6sxjiSqh/1cJxZ/AgbBaNwNucvK7pjATuB
	 xHJOR2c5xXzKwSNmXpdAagWhsaddZKapXBP5QV2MosCATXB5Myph2JlkqNknmiPoxm
	 fLu262bx96vHcjSQRS34UiTXAYVqvb+u8e5pcw9Wu2QFIjv4anujLwwtRW8d+dbcmO
	 TwH/e3JH11x2r2A5IpGKpJ+FbvmeIFsc9NoXcHBWCtgYa3lzduKzLdhidOowPO7Igw
	 5OAV+DrX4pXswEWKPs3LLhTvGXPaEpoOTwGcCx3dLGd/3ERWMgEYQ+4OpU8ttPgolW
	 iuju9i9Vs38sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C29C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779175357.28052.17082310212725040758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9119ac6306b77869965e08274e618974b5d6fd1e7a5aaa3ceeb6f5b551f8b1d
Date: Sat, 25 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737791753
