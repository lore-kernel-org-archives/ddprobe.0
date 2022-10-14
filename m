Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3F236E
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E050C433B5
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665714653;
	bh=zGlG9cu5LiEmRGcryanq4LrJg53EF+z6wzG2TRzO1N8=;
	h=To:Subject:From:Date:From;
	b=cPrZv3wNOpiGJNIVtBu34qDyULu7aydwTILJLiKr0SXq6qjZUsiHZxUDGBJvWhclt
	 EiZMVTcGOXBMRe7HY7JAAvD2lQLZYkUisWTvzsuo/ix/F7MhrnQEtUVyfEisIDahTA
	 Jawzl2wYhpawvfcNL3CO3VFAsDeWIh2ACH/jb9BS9h30OwHNgtwpQWGnNG2kqHW6a1
	 XjXKTyKUUiWfkmLGtUUvxma4umwfpopI/Mijn6bsBiSmrPwWrUpH7GUWaBHtgJEGP7
	 s4mvzOnzIWHzcmm94BpGWinmhWTYP7DZTs9AIztyRrxwnQWgOhBO6IIzLCMp3HZ1Cc
	 DV0VIfRJ5JRVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B51C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166571465332.28566.6511130201831261444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ab22a93add3af4791b8ffb7a03c630de36020d667ad34e0e802a4b72d07b2d
Date: Fri, 14 Oct 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665714653
