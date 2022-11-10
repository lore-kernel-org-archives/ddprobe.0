Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E427D36E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 884D9C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668058854;
	bh=anC6YbcY2kkb4UsSMouMzf7MfZsgI+NfeIp9vM1vvEc=;
	h=To:Subject:From:Date:From;
	b=XcfPnSrNs6qVc4hz7W/5PIn98A8kYL2vPRelbeCjtWzpzwslIYFFy3F5Gsf6dTvsq
	 9/y/ar1qYNTDDR9j+i97zoJctDiEbyz1S2z6NpRO+0lZ3IIM0TLdx/wnn89ASJxKp+
	 1YB3wnK2A0VhNuqvFKxHNabqytWYRPxhcwwoF7bOW6fQ9Hl8zcGr0QuYsTcmHMVG4j
	 uz3joRKTJ3cl1a0J3QbkYiLwXyPKEHsUSpaakZFdlEhbJsYYkKx/t+F4o0OZsCM+zD
	 a6Lv+Uexk4u5wg1zb+uf1Q1ngZ2+QRF82RoYQhl0A4bW6+W1DYSeYi4ZSn4JVVwZEc
	 OBiKBJgmlXIjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62AF4C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166805885436.10015.2823754381218496194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6730cf3381407276723e3ab0bf3108ed78aec862438042ec2206f42f43ebb0bc
Date: Thu, 10 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668058854
