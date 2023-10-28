Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FD6171BA
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2TJNUBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AA8C433C7
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698533896;
	bh=cYo3JCmXUYQvMRlT9DpcXJmQHRuFtn3SGvCeVf10LwI=;
	h=To:Subject:From:Date:From;
	b=E2TJNUBX39XFVMZHZuFgo5DvkHK1KJcFSWuyHOidRFqc1+8i0Wl7YE9iyp8An4SGX
	 JOtJnuR1dJSUwxdx/p02LUn/DNeNhcikD467tEQ+jwxXX5CeYOtpwn2TOiITqA9H8a
	 lnT25L5QkMaE47UH2iFAp/ZoXCMaizmZrWVFqHmCxA4ajYsYvG7RjOTcZSItdAqCeh
	 9yMNiO4HHkXR2OvstTemQSbAoigTuL3CkNcKheRAZv56039mZ6a9GEGWIrGtwCJVGk
	 6O6QuddvPXjP8J/AG20/38x3vk+Z2cZFApLNM8dAqjt8iQ65u55Dd7G5HM61eedhBM
	 HJHrTe6K8wdNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E0ABC4332F
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169853389650.2887.3644565746971208931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8721258675cfccc7a2e4a31c3c546a00132f13e1832a124646e05e3864c45137
Date: Sat, 28 Oct 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698533896
