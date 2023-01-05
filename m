Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC327B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA98C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672881087;
	bh=bLVGdKTdtZ5xpTxrL5Fgwxe/XAAdvEryi1puh3O25N0=;
	h=To:Subject:From:Date:From;
	b=nZO/RxQVnwzwzWXzFzzBkSc/BbJ1oWpYH4mz1evsTv3kAp6qdH/XDjM/5klGDCw3E
	 Mht6YvubzcpXTB6iXt2McNeA9Mh0oQOfbBdbduetT/SXUVs+AVc6BEIVelT1+nZ5cd
	 G14SqsbrqQsWWZerSp1sNK3fAMiatcD6eQgomww34tN0PEi5ixfX4KOHK/x3++yLvf
	 vGwp3TsjSTvuYQohEdSukUA1CQ/T+D9kHiGANWvgydmKJKxHtCzSsDO5bMjIsVi5OB
	 mT2UeHuD7bl41FeAw1WEWOwkryu6kcm3q2XgyLYA1N6Y/+6DAFUwz7bXwuHeCj3cl/
	 FKrv2u8H7UTLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622B3C46467
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167288108739.15113.3729467060871114789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7e48072397751d557cca220dbbc91964c724cfd41ba881c6f48427ebf78ab7
Date: Thu, 05 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672881087
