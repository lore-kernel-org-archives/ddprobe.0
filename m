Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7037C63CF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 11:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7FAC433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 11:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686224585;
	bh=GFijRIPnzJso2Dzx6m18e+0FgWeYM2lBlG1RpDcC5Yg=;
	h=To:Subject:From:Date:From;
	b=Ai3AW4aLr8uiU29eVDMZn5g//7+eM+xj2BvLIVmqlPLSQBqOzHDUAGvV5PRFnovY8
	 u13CL9TiYDLbfBUuU/tLC5OnUxmK5fm3uA+qaF1yNCHqcJXCGmNa11pbi304Io5MUN
	 S9VsdQe+BBTlhjhzgqa2OSMKMMsQEvUqmaQ6rpd0crT9FzOA+l5D9VAHgcyOnmsbWx
	 qgt0DT2KptLRgYJPmjMlOVM7hKNSRIiu/GvCpH06FPqe7/gZOmKFJ1EiIVSelHlOZk
	 DXf1eMGv4vukibxxEV58fX6GdRvCUh6BKUGoJa23uo28FQT3W0uUq5HZTaxeqytxbQ
	 aI8XZ/QOUZ/yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9A1C7EE29
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 11:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168622458576.10271.17275209694965613356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ee1aff16e161159d627801e400d95eaba72cab0a62debb148f68845949a3ba
Date: Thu, 08 Jun 2023 11:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686224585
