Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79DCE8BE1
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 08:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE63BC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 08:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695975368;
	bh=U2OJn+BgxVEmo7c6GaaLBLgwL3DcKbAXQJ3vSK4d9EM=;
	h=To:Subject:From:Date:From;
	b=DFrh//SgJ4i9FEg+2P0HqtWtvI9/n+UVfC6i0vuV7VkbRRLbU13FbRHjhxDIZ1a+Y
	 xuFzJ19zT9d16dDwhC8hbjvplJdEk6dqwMyo394GTD+kT/tNYqfKwkLrslzyYRYVhk
	 cq2TQ7tDT/JE9bBa1sL5dewPVw4ya+RANvsonv8dIq8/VDSdi8WPL4HQFRnbpxO6i0
	 SPGn3iK/0dw14y3LLXHWNQjRHqXW5YVqqV8qS7yRUZZ068xUGbRlOZVEZDHSA2lhjS
	 XVVjS4QNJPG1jrHtuOodQGVSb0PxGCVqP4QTYHnT3xmW6eJnrXT0Y/nkGLplSNBRyA
	 jKgEk0D4H9KiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF488E743F3
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 08:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169597536869.5478.4382455558827883564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80c3faf41932cd8d1d93258f4b9d67950b2c29acdafce645e4d54c14af3d4e2
Date: Fri, 29 Sep 2023 08:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695975368
