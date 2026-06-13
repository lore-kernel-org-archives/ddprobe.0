Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369031A9F8C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781309794; cv=none; b=ZkLMfBlUe2TnQ0tkdxtECnPKsiFbSNz4Ul6/QjoZe5Xt4UayULwsgvIpwpru/H3aeEMnEXeHgtffd5HsGgVqgA6r0+z/s+tj2ZA7aZPONmmOgVe1jJvV1fwza4OhKd3UzmDO2ItmusWS0KCHoQssd63yv5I4MGb4wrXKCYKMM08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781309794; c=relaxed/simple;
	bh=wdI/33ERem2MnVIV8XzDfuRITA+bqCPjOn6pHUA+x1k=;
	h=To:Subject:From:Message-Id:Date; b=R4gD2rKZAX5TSaA7XcdrELaWuxEE8FzfuiVidThRLvMEMyv/bCr4C+fFJE/YjkF4EThtPu8zbDs0/3evG9xC15P22KE/GEcgZHRY9vi7kmnfcPKn/jZwC6JQyfJVqveepfLPkRJbYzydpmIil/0MJ9Dgsi0S5/PH75GlhlBFOLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxJM1Q/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxJM1Q/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AF8C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781309793;
	bh=wdI/33ERem2MnVIV8XzDfuRITA+bqCPjOn6pHUA+x1k=;
	h=To:Subject:From:Date:From;
	b=VxJM1Q/GCTc8Q1KsH2824dXIJC7bli5z+LTh0vaxMr4YbwJvELB8JJBgBwEqOFozl
	 4SMs1J1Ipj5bHxvSRM1X1KC1o1xU2yo18i1Fu5qmp5cKmvtSanmlWQCG2TWIT4kI50
	 vYMlcTQVCB/u0R8NuEAdtjrd+hVBQZPuBGhGrSt9R0cPJcYRGzxbOZZNifWlLQWOM1
	 tMIJjbHA19sApQmDLcwcKHlPkr1l/XWVxmauWt6bYlllbKy4z160fLakkjUe9TJFvh
	 9XzTgD6eKEFrl6P7eLkDdtfBRk2zlDzylax05KI5J8LBqk+BClDyBYsywKAkL2Ojwh
	 C79B7X3Ycl/Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC1CCD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130979368.13205.13532235450685624988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be677395488b8d9279468948ffcf076749cbc020bcf4e4788eec03a03eed278
Date: Sat, 13 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781309793
