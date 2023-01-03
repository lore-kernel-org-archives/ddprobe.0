Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB474625
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81432C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672732287;
	bh=uZ0e790sBlaBRZnSObo6mV4NIovzJIQcGXXk+RVKonI=;
	h=To:Subject:From:Date:From;
	b=jUX7YmoX6TGkxey14SVOcYAjIJUvt9o5IfSeENiUm/VE4SFJdE0Ow26h4WM0uVU94
	 qYRZgM2rw4tvAmNJCM7Osf41TtzuT/UoURuUvD45LLEJzhaJpNZxEgIUMMpYPy2dEf
	 nA32rDV47lLbLkWoRPSXn66PUQQIp7vthJiix56fzEm41dnfFkigAjqAkrGXh6NeYq
	 hMmhQEA8GEkvrNuImYGkSWly43nDIekfIkkDwrv6j5PjrdW68Yp8jOOXD+zC/F+7iw
	 v+s3/E8y9Giyjv/YlTJariL7cvFQOl7e+0pHdyVWIW9Tp9T3bhVUHZ34xHaSOsDgU3
	 buwT0A2LdIxaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66106C46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167273228741.10647.6202027120657698274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ac892aeca2d45edb787ad0063f10f5a07987a1be92da3cf1863c08824049bf
Date: Tue, 03 Jan 2023 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672732287
