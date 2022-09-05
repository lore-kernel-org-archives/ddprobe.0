Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B659B15A7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D564C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662339053;
	bh=tNCzMkxiu/2EF8NWaybuuIuSQpDbxc6IIJNJaV3N6EA=;
	h=To:Subject:From:Date:From;
	b=DRLqUb+gp5V5YMg2RrOhbM2F6E8177QdUjDDomOZfhqNxMr9oNJ+IE4CpTSOw/L6m
	 PKVRisOFzfJwX4dEqrVL6BwWAdRt4QFvooxBmZK57OzBDec9ZEbSXGE2rgWxgyXCxc
	 g8XCz7rHIwwG1kv85HbBDmBeVLu4tVQN0tRnX1C7/P4ZyH6ZCfAu6pEJyL85t1LrS1
	 wD0lfnAw4po6qKv1ophvTOP9MFUCqPYCmmZn84YoGsXSuWzvF/CTREWcONPUN+Zt/a
	 JZzcPQMXBayd+zYha0p62pLXW5SVFnY5j4MJ52HZyZt4KB+xT4PskityGa9u7pJuYl
	 aFwVyA4NYAfyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A44ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166233905333.5745.7140331182457179160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8f67e8f293bce2b102e2109c7536fecfdbee377cb8e8f2c12a59b6f4f6e797
Date: Mon, 05 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662339053
