Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749A56FCF
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 07:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1946C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 07:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695628508;
	bh=RFhiDH++rQHDb5pPzglzd6bSGXtWdX72R6MSBsY4Q8A=;
	h=To:Subject:From:Date:From;
	b=QpFDGFPmktD8yWehV9LRQ5pSPK5Hu8UMlZwsTAhvlk3Z8b8L0WC9JIroNl2NvmAEV
	 cqscX20Ak7l0oj2EQ5o4yEY3DWHSDg9UL1rwH33pa13xYDjJJCi70tnETZ20EFKalA
	 UO1z5ZEP0bvML/lAGCo0L+EAmmiLYImVBUtLawxwWWavZtc+o3eqvP0Jt4MXs9PrrA
	 ++Z73cFeWjrOrexRCrrs/njehTcZG1+Z4pO9jwcJNWrm1ZD79W+vE+rLATQwIZZiS3
	 n1CGwS6VFcjsD5tlhbUOLdsUolXJK4dZn/Yul0wLYXn+kLD6fFvW/mXVVFYesrvs0n
	 l77hVOI9Rg9ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B776FCE7A89
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 07:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169562850874.17262.10539040402056085828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 430b45237739019cfcc286bc81fb523c59768b61f75d0666aeac5c15237de6b4
Date: Mon, 25 Sep 2023 07:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695628508
