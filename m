Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD91023A2
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CCEC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665471653;
	bh=1Uw8HqAv/tNGYn82Iz+DTRla9IpZXmTTWpABL2F3Ces=;
	h=To:Subject:From:Date:From;
	b=UExwIqS5F391TLdnMhnNiC/bBEFcFXIG7tIFGuPm+mK2WOPgBtNMsNzSvPztVGxpe
	 kHyA6iEYQlKJwdtv+pOjHAhibFOZFLIrI6u4iBT8Mqkpz8tJRezKfDH5Wma/g7LNoH
	 8V4oPSDQCw0O7fRa0fLmcNKHY6yNCtZf5FOvuTWOVaMBz9GvFbZGRPtu3tLS9QVzQy
	 Z4RxcGBWtTqdZ8Byk2NcRIo4XNsj3N+N4Bq7hSQXJmm630XVoJDpmFUhLlXRWpGpzi
	 3w+5g46tmTE7rDdgx6evMHsW10H9eBHnn9WHkw6+x9BpuXgsIL9K6AX5FpqmTOA/9I
	 D4OqFCVSW/GhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546A0C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166547165333.16798.16600110074079077883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d075efb457a2336044ed1bd75d41c4c731cdfb7e2215eee77352dea9e7311ac4
Date: Tue, 11 Oct 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665471653
