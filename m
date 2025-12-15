Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F6D221F20
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765798373; cv=none; b=NapBXAHMKwpif0zraxhZlAsaxYAYzO4waK+I5ncwzuTBrutGyv5rOacAYWjGHiDzjYl6SJYUireMTmUuewQwwSbFn33y4jtXGLrbaxLsoOUIeSWQ7q3sBvclzRkKGc1NkrT4OGzLGnIdNgAtmjS5FTwn8dxjt2y9tD8FOeGm1hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765798373; c=relaxed/simple;
	bh=dLWlxRjPpAQ2A3/tBOZmgu9mtZ12r3btuK6ePYjR3X4=;
	h=To:Subject:From:Message-Id:Date; b=R8tCgZRXVuP/MNX66eAxpe86tU6Z4x8r+rOdZXUFa8c8M9oo0jvHnKxTrYvGtsp1BhepzOQzuRU547VmFJ+ClJFZ7cLHDZ4y+gmDZIAzceKptDgoEFXSEE1lBBGNS3VVOZP3dMthuQzn4+fxqs9eHnB9ULG+I7J35Kf0WNPUdzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhTvuOCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhTvuOCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09E6C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765798373;
	bh=dLWlxRjPpAQ2A3/tBOZmgu9mtZ12r3btuK6ePYjR3X4=;
	h=To:Subject:From:Date:From;
	b=bhTvuOCQcdw3ljKfYjzqFlCUn3Zr0UYvj8hhwyEWodzaAwEUnKfo025rlRF/1AA+3
	 cP638YLsl5KomGyPQDQrux+nPLipDi2lHUhKP8vA4r59CcLYZ3o/fb4jCS74lai4fm
	 po38z8te9Va7M7Xzof+BxhRvIU8Ku/WIebV7tEGBPzkUSepFown1hguxboJkxbsWmc
	 O8aTeNYQuTCLaxyH8AjUv1IDWrb6j/x2zo3YmOzFhzLipO32a1zZ3VRsxO5A4Td+Kg
	 pnmfaMAx49DS2JOAkMId8hMdvkNhP0UMaw/bkXOJUc/VeyFBs7nEU1JdyAGz2G9RWi
	 Qp/W4UlJMrLDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1D8D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579837363.25927.7737591360850074110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdcc875708448e26c24819abc5aca77f8dcdff28c21fdab52da50c9e0026b425
Date: Mon, 15 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765798373
