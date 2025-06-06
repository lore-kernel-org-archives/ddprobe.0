Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ADE20DD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749246594; cv=none; b=T79DiMrEDP/LjNaqgQMtOJksxYwKl6thf1A0AEQcDZT0xF2EqNRjMkUXT5Ps1qmpBKT9XZfZ6ZcIApr1DLMpxs/xRxG2TSZbstoe7MhjwTjyFdQDZnEvdwjah+bKyYG5t3fHLq8wWW6o6TB315fJOinErdNDUV2E0co6syHY/yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749246594; c=relaxed/simple;
	bh=mtlw6AjbA6SdIc78I6HJw3dWmGdNlNcicXPaa5hytjU=;
	h=To:Subject:From:Message-Id:Date; b=LsSpKjSAGSUmFaccwQ0Z0XngX6gPEvcdV8cdYU0PmQFz0Wft/nWvj/cxdNZXvdwl/6mVmAcd7HjeOIaW/gzVGtjLjYvD61v9Mhynr1H7MLUPNQD6+ztp35PWgiJ+Fg5ij1lFt2s/buTkLVannDQJVoOGgcB5CHix2uUbod8Q0IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPKXM7XA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPKXM7XA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F4CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749246593;
	bh=mtlw6AjbA6SdIc78I6HJw3dWmGdNlNcicXPaa5hytjU=;
	h=To:Subject:From:Date:From;
	b=YPKXM7XAtmsRPxbFHRbvKNHIocth4B1InBXKUu3Y6zgKvmPUPYbfOzwmGLJEeKgNS
	 4Z3q4m3LddO4ug9lmY+sf8ZaKLukjug2n1pmonooG15uDtE7wQG7uKQt9RIuDF/J5I
	 OXpfe1gMV0//ctwfQoviPb8jYMjIC5276yGsmV7XBZG+zObuNLvyFT+2PfpfQmq7fG
	 8nVqN6wpd3o7+GVcb8h7r2nO/as33FATKty5Waqh3bzKilk7tBxhCsrYwY00AP7Tvn
	 J1Qg0HdYI69SJwqXn085vZKhV+jXeQ1TiV4dDH2CqjOho81ij4mSU00YDpgCxFApoa
	 MoJaE7GiNyU+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F357C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924659357.10869.10982204385695994823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6086c115bfa5b49f56d29159cb07d28257ffb97ee04cb806c819f2154ca36796
Date: Fri, 06 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749246593
