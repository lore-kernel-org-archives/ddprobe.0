Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAAC7F0
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 02:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6191C433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 02:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683858305;
	bh=nb25fZwSpHL9Un8f+2S42iecCjuhMtIvD229C6VI3fo=;
	h=To:Subject:From:Date:From;
	b=oBR4Y34yA7gSd8HZlG1cMQl9eao74VVaoiK8dGy/pJqHBwysnoNtPLiGRV/1KFm11
	 gc/nCyW7X0siZQThhm9Qmi4BWo5K51RRcZDeA+E0gziwtOyvqH2M+gZr+C5gfnpFpo
	 bnnFVQQf4PyodPgt2pL2+/rLhROx3q1e0C69HvzoXN2NRPlFeRR33GJRuJMBtp2FoZ
	 Tij4hItuJWE5jG9xVHx51HIPGYore/NvMbcKihnogqBzNV8YannRKlQIQ8Soak08Y4
	 y7F10wrMPdpWSkxGf+RMtLoO5Bxh9UyQFV9gVdJwiYRc/2UwueLtNwh3NajltX4eSG
	 4xSYKUk1UaR4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B1EC7EE22
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 02:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168385830574.25627.4592969557264965424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42cac480f02705fd58e7a76180146bc386cdd75a584569251c9d46b7e10430a3
Date: Fri, 12 May 2023 02:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683858305
