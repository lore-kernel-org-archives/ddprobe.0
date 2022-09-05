Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6CFD3D82
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75181C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662378653;
	bh=NGaIGAOKM7wYMB9/+I3TG7Ecx8ES7YWFEhjceqjRvPc=;
	h=To:Subject:From:Date:From;
	b=NjmpecWnRhTpBogkWaiA6wL4ucad6L1+BtDz57uz109pgpxg3F2Vy5eQ6cubynaGJ
	 zMSrDYjATtWokyGsA7Nu/Eu/BN2EfftzSaQXYhjH+pvrXjBEI4ZhyktnN9MPDT6RuG
	 0wHl+XBGMzhEpNzzPKhKyJX2ZsOEbx/Wwf5Fm818uBAvha0rwTVl5Zyxk+ZkyY1jzx
	 RdMKVOGPpokVXL6jah9kOISENU6HsI0TfLvCtRhFuA/8TtJBznxttwpKWVmTrmjRDM
	 cUiA/B+PtgG/t/4EBuWoCyFGUOWxKrHz7CD40mIRY57AhU1ofhc6RhOn3olyirx1HV
	 G5RE+HtDDM0mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D96FECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166237865337.22464.312393371821274637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8507f30a1033c1610b6c2f33efb1e7f795c136f0ebee338ec984c4a2bd5f89
Date: Mon, 05 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662378653
