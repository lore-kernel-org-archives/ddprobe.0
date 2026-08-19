Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513464248CE
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787129434; cv=none; b=QRGPKuFmeqjzFEjhGX5z1rKF3RWI9i4MMrcbHsGrU4pW0mYEs3Qqadwmt6m4U0VIA59PcbsTG0nWETg8bqnHl6GiyWFeuY9tPdBpruqCbqGfYPy8ETuN3+z6YSQMoTyBir22tLQlcj428jz51RZJuphfh4MdoAAVRMMVkotoNe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787129434; c=relaxed/simple;
	bh=ECVrYDMk2FqoXGu5zyIyWbwrU1nrGmGMxYZYFWv9MLc=;
	h=To:Subject:From:Message-Id:Date; b=U+26oCPq/b/uutIayLPTSlK4yJJhXRMlYmQKSJJApsagyTjQaje4VEBWmnz5mxrbsNe2t2HYRL0Cy7YMkXfy6TFJZ9IroAdZiSCIcZJEAXusIgheY3Lv2MX+IdFtRw1d3eTGrU27GsEe5ORYBKt+5TYw0iXW6t1dgW7xHC1xGYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kF+KewR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kF+KewR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF70DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787129433;
	bh=ECVrYDMk2FqoXGu5zyIyWbwrU1nrGmGMxYZYFWv9MLc=;
	h=To:Subject:From:Date:From;
	b=kF+KewR1yxztBM3W2SLl8Duh0zZH+W6KsAodB0Dxc9XhUVmXjsWPQopO+KFhbnKDm
	 6lxxSyV1G0SdhmRe84BoFXz76W5ks12n7umUHNW8Ty6xuarNL+b3xFeazbeMopVwO+
	 tuG2Qmvc5g3seY1hFCIYXVw+Xs9r0yIe1zBYe4efXfkpgQo30BMi+y6JVIDHlvCzNU
	 DYOswbawL0P5Q8flQfYy0XIh+N0pIUkNetpesJu0xVMst6HE/hlhkqTKlFT8lc3EuT
	 yNyK5MmCHtlwhrScu6Pxu8l1z20djysRsmMW4XUdwbaONmTm/Y8WMFrg6TlHN9ZuRu
	 uS2EHP+s7ZfpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F7DC5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712943368.15603.13100763486045266732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed79ea64491bbcda544975cc5d1dae360440e492bb7de3be59e4425586d36f02
Date: Wed, 19 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787129433
