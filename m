Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4CC6D6D1
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7oWhntP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ADE4C433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703168296;
	bh=uQWz6el7iQ4RM77zV226QVgc56qcEjqVb9NrZAZYL3s=;
	h=To:Subject:From:Date:From;
	b=f7oWhntPfY7xxXikYRhKRbsM2eYUQyNPd7VMWL232u4oVoJlUvwwN/rgTN9Eig2+N
	 Hnq1Qd3MJD7RCn55A147lhXfeO7JyuWUBoVoBO6rL6KYmLJaTfemVDXoVpATU4de5J
	 3iULLXPPcFmzs9MCyeabXa0fbrwKGuJ0pHAGuxG2+pglBtRa9BUi0HaJgw34oTWeAC
	 VZpq049fcjm6JPoOVLM0uAdufbuW66c9nreyPkmXCMs6pmMg9yd5tpT6aBxlwdAFl4
	 yTIDXJJhVEV7LoJeyllJ/PcxIpj3+jw9gJk/hGQeBNJ4jd0Fuopq7gFqjk8IM5R/Wa
	 A1AZglLaTE1qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F50DC35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170316829638.12042.8158714785510225786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5137522fe1c320d43a7e588e9e74d89f39f4a1f86157cb6021b376dcccf3d482
Date: Thu, 21 Dec 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703168296
