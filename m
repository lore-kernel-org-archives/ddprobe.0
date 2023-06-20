Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456911FA9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF4FC433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687239128;
	bh=8K55Naz7IOy2TufcI6YgVrfRM1zYckkdSSnY3lKvnRE=;
	h=To:Subject:From:Date:From;
	b=LkKGeNL8nUu6ZO2wST7DgIEgYhCdADF5fLf3vGHI9qSxORdsUibPH2oa/7FLT8J8J
	 1Yk72Uf2VHwEOyGNTbsHQ1OcPGkuH+N3VFUmFQahFrdVc7AnwBVgJYOKiWuWHaCw1t
	 e6slwc0rgKo5yPG44rdc8f0UvfkqXRQIFnOi1b9FWltbAE0fnQ8UZ88jZrr1DD6KwI
	 I4SpCZ+gRHtKJtlBeJ72MlPy5+MB8NG1cV9roeogjMMF8PAcgMEp3z8ZXg5ai/sdx7
	 kr22sOPVtpwLcVK/heK9+Ga5QsOcNVH2wA4TqSpRHtQsnuialDq4PKJVFjw8qXu7/9
	 PPLAw4JOK4rHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4559EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168723912866.13386.6283661908089235607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d391bb0a2e3cf65a369ea4691fe3314c3b1b805e2955e231c4575302317c8bb
Date: Tue, 20 Jun 2023 05:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687239128
